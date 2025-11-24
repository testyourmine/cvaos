#include "code_080D73B8.h"
#include "gba.h"
#include "macros.h"
#include "m4a.h"
#include "m4a_internal.h"

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
    [0x1020 - 0x1020] = SOUND_MODE_FREQ_05734,
    [0x1021 - 0x1020] = SOUND_MODE_FREQ_07884,
    [0x1022 - 0x1020] = SOUND_MODE_FREQ_10512,
    [0x1023 - 0x1020] = SOUND_MODE_FREQ_13379,
    [0x1024 - 0x1020] = SOUND_MODE_FREQ_15768,
    [0x1025 - 0x1020] = SOUND_MODE_FREQ_18157,
    [0x1026 - 0x1020] = SOUND_MODE_FREQ_21024,
    [0x1027 - 0x1020] = SOUND_MODE_FREQ_26758,
    [0x1028 - 0x1020] = SOUND_MODE_FREQ_31536,
    [0x1029 - 0x1020] = SOUND_MODE_FREQ_36314,
    [0x102A - 0x1020] = SOUND_MODE_FREQ_40137,
    [0x102B - 0x1020] = SOUND_MODE_FREQ_42048
};

/**
 * @brief D73B8 | Start song
 * 
 * @param song Song
 */
void StartSong(u16 song)
{
    struct MP2KPlayerState *mplayInfo;

    if (song < 0x2E)
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

    if (command >= 0x1020 && command <= 0x102B)
    {
        // Set the audio frequency
        m4aSoundMode(sSoundModeFreqTable[command - 0x1020]);
        return;
    }

    switch (command)
    {
        // Mute the current song
        case 0x1010:
            if (gCurrentSong >= 0)
            {
                MPlayVolumeSet(gSongTable[gCurrentSong].ms, 0x19, 0);
            }
            break;

        // Make the current song quiet
        case 0x1012:
            if (gCurrentSong >= 0)
            {
                MPlayVolumeSet(gSongTable[gCurrentSong].ms, 0x3C, 0x90);
            }
            break;

        // Set the current song to max volume
        case 0x1011:
            if (gCurrentSong >= 0)
            {
                MPlayVolumeSet(gSongTable[gCurrentSong].ms, 0x3C, 0xFF);
            }
            break;

        // Set amplitude resolution to 6 bit (262.144kHz sampling cycle)
        case 0x1006:
            m4aSoundMode(SOUND_MODE_DA_BIT_6);
            break;

        // Set amplitude resolution to 7 bit (131.072kHz sampling cycle)
        case 0x1007:
            m4aSoundMode(SOUND_MODE_DA_BIT_7);
            break;

        // Set amplitude resolution to 8 bit (65.536kHz sampling cycle)
        case 0x1008:
            m4aSoundMode(SOUND_MODE_DA_BIT_8);
            break;

        // Set amplitude resolution to 9 bit (32.768kHz sampling cycle)
        case 0x1009:
            m4aSoundMode(SOUND_MODE_DA_BIT_9);
            break;

        // Mute the music player
        case 0x1040:
        case 0x1041:
        case 0x1042:
        case 0x1043:
        case 0x1044:
        case 0x1045:
        case 0x1046:
        case 0x1047:
            MPlayVolumeSet(command - 0x1040, 0x19, 0);
            break;

        // Stop the music player
        case 0x1030:
        case 0x1031:
        case 0x1032:
        case 0x1033:
        case 0x1034:
        case 0x1035:
        case 0x1036:
        case 0x1037:
            MPlayStop(gMPlayTable[command - 0x1030].info);
            gMPlayVolume[gSongTable[command - 0x1030].ms].step = 0;
            break;

        // Resume the music player
        case 0x1038:
        case 0x1039:
        case 0x103A:
        case 0x103B:
        case 0x103C:
        case 0x103D:
        case 0x103E:
        case 0x103F:
            m4aMPlayContinue(gMPlayTable[command - 0x1038].info);
            break;

        // Pause audio
        case 0x1002:
            if (gAudioPaused == FALSE)
            {
                gAudioPaused = TRUE;
                m4aMPlayAllStop();
            }
            break;

        // Resume audio
        case 0x1003:
            if (gAudioPaused)
            {
                gAudioPaused = FALSE;
                m4aMPlayAllContinue();
            }
            break;

        // Reset audio
        case 0x1000:
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

    // TODO: figure out why these StartSongs are here
    // my guess: it's loading silence into all the music players
    StartSong(0x2E);
    StartSong(0x2F);
    StartSong(0x30);
    StartSong(0x31);
    StartSong(0x32);
    StartSong(0x33);
    StartSong(0x34);
    StartSong(0x35);
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

    if (song & 0x8000)
    {
        m4aSongNumStop(song & 0x3FF);
        gMPlayVolume[gSongTable[song & 0xFFF].ms].step = 0;
        if ((song & 0xFFF) < 0x2E)
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
