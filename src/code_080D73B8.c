#include "code_080D73B8.h"
#include "gba.h"
#include "macros.h"
#include "m4a.h"
#include "m4a_internal.h"

#include "constants/songs.h"

#define VOLUME_DIRECTION_UP 1
#define VOLUME_DIRECTION_DOWN 0

static u16 gAudioPaused;
static s16 gCurrentSong;

struct MusicPlayerVolume {
    u16 step;
    u16 updated;
    u16 coarse;
    u16 target;
    u16 current;
    u16 direction;
};
static struct MusicPlayerVolume gMPlayVolume[8]; // NUM_MUSIC_PLAYERS

static u32 sSoundModeFreqTable[] = {
    [AUDIO_FREQ_OFFSET(SOUND_MODE_FREQ_05734) - 1] = SOUND_MODE_FREQ_05734,
    [AUDIO_FREQ_OFFSET(SOUND_MODE_FREQ_07884) - 1] = SOUND_MODE_FREQ_07884,
    [AUDIO_FREQ_OFFSET(SOUND_MODE_FREQ_10512) - 1] = SOUND_MODE_FREQ_10512,
    [AUDIO_FREQ_OFFSET(SOUND_MODE_FREQ_13379) - 1] = SOUND_MODE_FREQ_13379,
    [AUDIO_FREQ_OFFSET(SOUND_MODE_FREQ_15768) - 1] = SOUND_MODE_FREQ_15768,
    [AUDIO_FREQ_OFFSET(SOUND_MODE_FREQ_18157) - 1] = SOUND_MODE_FREQ_18157,
    [AUDIO_FREQ_OFFSET(SOUND_MODE_FREQ_21024) - 1] = SOUND_MODE_FREQ_21024,
    [AUDIO_FREQ_OFFSET(SOUND_MODE_FREQ_26758) - 1] = SOUND_MODE_FREQ_26758,
    [AUDIO_FREQ_OFFSET(SOUND_MODE_FREQ_31536) - 1] = SOUND_MODE_FREQ_31536,
    [AUDIO_FREQ_OFFSET(SOUND_MODE_FREQ_36314) - 1] = SOUND_MODE_FREQ_36314,
    [AUDIO_FREQ_OFFSET(SOUND_MODE_FREQ_40137) - 1] = SOUND_MODE_FREQ_40137,
    [AUDIO_FREQ_OFFSET(SOUND_MODE_FREQ_42048) - 1] = SOUND_MODE_FREQ_42048
};

/**
 * @brief D73B8 | Start song
 * 
 * @param song Song
 */
void StartSong(u16 song)
{
    struct MP2KPlayerState *mplayInfo;

    if (song < MUS_COUNT)
    {
        gCurrentSong = song;
    }

    mplayInfo = gMPlayTable[gSongTable[song].ms].info;
    if (mplayInfo->status & MUSICPLAYER_STATUS_PAUSE)
    {
        m4aSongNumStart(song);
        gMPlayVolume[gSongTable[song].ms].step = 0;
        gMPlayVolume[gSongTable[song].ms].current = 0xFF * 0x10;
    }
    else if ((mplayInfo->songHeader->priority <= gSongTable[song].header->priority) || !(mplayInfo->status & MUSICPLAYER_STATUS_TRACK))
    {
        MPlayStop(mplayInfo);
        m4aSongNumStart(song);
        gMPlayVolume[gSongTable[song].ms].step = 0;
        gMPlayVolume[gSongTable[song].ms].current = 0xFF * 0x10;
    }
}

/**
 * @brief D744C | Execute the audio command
 * 
 * @param command Audio command
 */
void AudioCommand(u16 command)
{
    s32 i;

    if (command >= (AUDIO_FREQ(SOUND_MODE_FREQ_05734) - 1) && command <= (AUDIO_FREQ(SOUND_MODE_FREQ_42048) - 1))
    {
        // Set the audio frequency
        m4aSoundMode(sSoundModeFreqTable[command - AUDIO_FREQ_BASE]);
        return;
    }

    switch (command)
    {
        // Mute the current song
        case SONG_MUTE:
            if (gCurrentSong >= 0)
            {
                MPlayVolumeSet(gSongTable[gCurrentSong].ms, 0x19, 0);
            }
            break;

        // Make the current song quiet
        case SONG_QUIET:
            if (gCurrentSong >= 0)
            {
                MPlayVolumeSet(gSongTable[gCurrentSong].ms, 0x3C, 0x90);
            }
            break;

        // Set the current song to max volume
        case SONG_LOUD:
            if (gCurrentSong >= 0)
            {
                MPlayVolumeSet(gSongTable[gCurrentSong].ms, 0x3C, 0xFF);
            }
            break;

        // Set amplitude resolution to 6 bit (262.144kHz sampling cycle)
        case AUDIO_6BIT:
            m4aSoundMode(SOUND_MODE_DA_BIT_6);
            break;

        // Set amplitude resolution to 7 bit (131.072kHz sampling cycle)
        case AUDIO_7BIT:
            m4aSoundMode(SOUND_MODE_DA_BIT_7);
            break;

        // Set amplitude resolution to 8 bit (65.536kHz sampling cycle)
        case AUDIO_8BIT:
            m4aSoundMode(SOUND_MODE_DA_BIT_8);
            break;

        // Set amplitude resolution to 9 bit (32.768kHz sampling cycle)
        case AUDIO_9BIT:
            m4aSoundMode(SOUND_MODE_DA_BIT_9);
            break;

        // Mute the music player
        case MUSIC_PLAYER_MUTE(0):
        case MUSIC_PLAYER_MUTE(1):
        case MUSIC_PLAYER_MUTE(2):
        case MUSIC_PLAYER_MUTE(3):
        case MUSIC_PLAYER_MUTE(4):
        case MUSIC_PLAYER_MUTE(5):
        case MUSIC_PLAYER_MUTE(6):
        case MUSIC_PLAYER_MUTE(7):
            MPlayVolumeSet(command - MUSIC_PLAYER_MUTE_BASE, 0x19, 0);
            break;

        // Stop the music player
        case MUSIC_PLAYER_STOP(0):
        case MUSIC_PLAYER_STOP(1):
        case MUSIC_PLAYER_STOP(2):
        case MUSIC_PLAYER_STOP(3):
        case MUSIC_PLAYER_STOP(4):
        case MUSIC_PLAYER_STOP(5):
        case MUSIC_PLAYER_STOP(6):
        case MUSIC_PLAYER_STOP(7):
            MPlayStop(gMPlayTable[command - MUSIC_PLAYER_STOP_BASE].info);
            gMPlayVolume[gSongTable[command - MUSIC_PLAYER_STOP_BASE].ms].step = 0;
            break;

        // Resume the music player
        case MUSIC_PLAYER_RESUME(0):
        case MUSIC_PLAYER_RESUME(1):
        case MUSIC_PLAYER_RESUME(2):
        case MUSIC_PLAYER_RESUME(3):
        case MUSIC_PLAYER_RESUME(4):
        case MUSIC_PLAYER_RESUME(5):
        case MUSIC_PLAYER_RESUME(6):
        case MUSIC_PLAYER_RESUME(7):
            m4aMPlayContinue(gMPlayTable[command - MUSIC_PLAYER_RESUME_BASE].info);
            break;

        // Pause audio
        case AUDIO_PAUSE:
            if (gAudioPaused == FALSE)
            {
                gAudioPaused = TRUE;
                m4aMPlayAllStop();
            }
            break;

        // Resume audio
        case AUDIO_RESUME:
            if (gAudioPaused)
            {
                gAudioPaused = FALSE;
                m4aMPlayAllContinue();
            }
            break;

        // Stop audio
        case AUDIO_STOP:
            m4aMPlayAllStop();
            gAudioPaused = FALSE;
            gCurrentSong = -1;

            for (i = 0; i < ARRAY_SIZE(gMPlayVolume); i++)
            {
                gMPlayVolume[i].step = 0;
                gMPlayVolume[i].current = 0xFF * 0x10;
            }
            break;
    }
}

/**
 * @brief D773C | Set volume
 * 
 * @param player Music player
 * @param step Amount to change volume by
 * @param volume Desired volume
 */
void MPlayVolumeSet(u16 player, u16 step, u16 volume)
{
    struct MusicPlayerVolume *mplayVolume;

    mplayVolume = &gMPlayVolume[player];
    if (player <= NUM_MUSIC_PLAYERS)
    {
        if (step != 0)
        {
            mplayVolume->step = step;
            mplayVolume->target = volume * 0x10;
            if (mplayVolume->current < (volume * 0x10))
            {
                mplayVolume->coarse = mplayVolume->updated = mplayVolume->current;
                mplayVolume->direction = VOLUME_DIRECTION_UP;
            }
            else
            {
                mplayVolume->coarse = mplayVolume->updated = mplayVolume->current;
                mplayVolume->direction = VOLUME_DIRECTION_DOWN;
            }
        }
        else
        {
            m4aMPlayVolumeControl(gMPlayTable[player].info, TRACKS_ALL, volume);
            mplayVolume->current = volume * 0x10;
        }
    }
}

/**
 * @brief D77B0 | Update volume
 * 
 */
void MPlayVolumeUpdate(void)
{
    u8 i;
    struct MusicPlayerVolume *mplayVolume;
    s32 newVolume;
    s32 newCoarseVolume;

    for (i = 0; i < ARRAY_SIZE(gMPlayVolume); i++)
    {
        mplayVolume = &gMPlayVolume[i];
        if (mplayVolume->step == 0)
            continue;

        if (mplayVolume->direction != VOLUME_DIRECTION_DOWN)
        {
            // Increase volume
            newVolume = mplayVolume->updated + mplayVolume->step;
            // If the new volume has reached the target or the updated volume has reached the maximum
            if ((mplayVolume->target <= newVolume) || (mplayVolume->updated >= (0xFF * 0x10)))
            {
                mplayVolume->step = 0;
                m4aMPlayVolumeControl(gMPlayTable[i].info, TRACKS_ALL, mplayVolume->target / 0x10);
                mplayVolume->current = mplayVolume->target;
            }
            else
            {
                mplayVolume->updated = newVolume;
                // Only update the volume after enough change (about 2 volume steps)
                newCoarseVolume = mplayVolume->updated >> 5;
                if (mplayVolume->coarse != newCoarseVolume)
                {
                    mplayVolume->coarse = newCoarseVolume;
                    m4aMPlayVolumeControl(gMPlayTable[i].info, TRACKS_ALL, mplayVolume->updated / 0x10);
                }
                mplayVolume->current = mplayVolume->updated;
            }
        }
        else
        {
            // Decrease volume
            newVolume = mplayVolume->updated - mplayVolume->step;
            // If the new volume has reached the target or the updated volume has reached the minimum
            if ((mplayVolume->target >= newVolume) || (mplayVolume->updated <= (0x10 * 0x10)))
            {
                mplayVolume->step = 0;
                m4aMPlayVolumeControl(gMPlayTable[i].info, TRACKS_ALL, mplayVolume->target / 0x10);
                if (mplayVolume->target <= (1 * 0x10))
                {
                    MPlayStop(gMPlayTable[i].info);
                }
                mplayVolume->current = mplayVolume->target;
            }
            else
            {
                mplayVolume->updated = newVolume;
                // Only update the volume after enough change (about 2 volume steps)
                newCoarseVolume = mplayVolume->updated >> 5;
                if (mplayVolume->coarse != newCoarseVolume)
                {
                    mplayVolume->coarse = newCoarseVolume;
                    m4aMPlayVolumeControl(gMPlayTable[i].info, TRACKS_ALL, mplayVolume->updated / 0x10);
                }
                mplayVolume->current = mplayVolume->updated;
            }
        }
    }
}

/**
 * @brief D7880 | Initialize the audio engine
 * 
 */
void InitializeAudio(void)
{
    u8 i;

    m4aSoundInit();
    m4aSoundMode(DEFAULT_SOUND_MODE);
    gAudioPaused = FALSE;
    gCurrentSong = -1;

    for (i = 0; i < ARRAY_SIZE(gMPlayVolume); i++)
    {
        gMPlayVolume[i].step = 0;
        gMPlayVolume[i].target = 0;
    }

    // Fill music players with silence
    StartSong(MUS_46);
    StartSong(MUS_47);
    StartSong(MUS_48);
    StartSong(MUS_49);
    StartSong(MUS_50);
    StartSong(MUS_51);
    StartSong(MUS_52);
    StartSong(MUS_53);
    m4aMPlayAllStop();
}

/**
 * @brief D7900 | Process audio and volume during V-Blank
 * 
 */
void AudioVSync(void)
{
    m4aSoundMain();
    MPlayVolumeUpdate();
}

/**
 * @brief D7910 | Play song
 * 
 * @param song Song
 */
void PlaySong(u16 song)
{
    if (song < 0x400)
    {
        StartSong(song);
        return;
    }

    if (song & STOP_SONG)
    {
        m4aSongNumStop(song & 0x3FF);
        gMPlayVolume[gSongTable[song & 0xFFF].ms].step = 0;
        if ((song & 0xFFF) < MUS_COUNT)
        {
            gCurrentSong = -1;
        }
    }
    else
    {
        AudioCommand(song);
    }
}

/**
 * @brief D7984 | Reset the audio engine
 * 
 */
void ResetAudio(void)
{
    u8 i;

    m4aSoundMode(DEFAULT_SOUND_MODE);
    gAudioPaused = FALSE;
    gCurrentSong = -1;

    for (i = 0; i < ARRAY_SIZE(gMPlayVolume); i++)
    {
        gMPlayVolume[i].step = 0;
        gMPlayVolume[i].target = 0;
    }
}

/**
 * @brief D79CC | (Unused) Get the updated music player volume
 * 
 * @param player Music player
 * @return u16 Updated music volume
 */
u16 GetPlayerUpdatedVolume(u16 player)
{
    return gMPlayVolume[player].updated;
}
