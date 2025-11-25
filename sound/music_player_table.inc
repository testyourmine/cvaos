    .equiv TRACK_SIZE, 0x50
    .equiv NUM_TRACKS_0, 7
    .equiv NUM_TRACKS_1, 5
    .equiv NUM_TRACKS_2, 1
    .equiv NUM_TRACKS_3, 1
    .equiv NUM_TRACKS_4, 1
    .equiv NUM_TRACKS_5, 1
    .equiv NUM_TRACKS_6, 1
    .equiv NUM_TRACKS_7, 1

    .bss

 gMPlayTrack_0: @ 0x03002260
     .space TRACK_SIZE * NUM_TRACKS_0
     .size gMPlayTrack_0, .-gMPlayTrack_0
 
 gMPlayTrack_1: @ 0x03002490
     .space TRACK_SIZE * NUM_TRACKS_1
     .size gMPlayTrack_1, .-gMPlayTrack_1
 
 gMPlayTrack_2: @ 0x03002620
     .space TRACK_SIZE * NUM_TRACKS_2
     .size gMPlayTrack_2, .-gMPlayTrack_2
 
 gMPlayTrack_3: @ 0x03002670
     .space TRACK_SIZE * NUM_TRACKS_3
     .size gMPlayTrack_3, .-gMPlayTrack_3
 
 gMPlayTrack_4: @ 0x030026C0
     .space TRACK_SIZE * NUM_TRACKS_4
     .size gMPlayTrack_4, .-gMPlayTrack_4
 
 gMPlayTrack_5: @ 0x03002710
     .space TRACK_SIZE * NUM_TRACKS_5
     .size gMPlayTrack_5, .-gMPlayTrack_5
 
 gMPlayTrack_6: @ 0x03002760
     .space TRACK_SIZE * NUM_TRACKS_6
     .size gMPlayTrack_6, .-gMPlayTrack_6
 
 gMPlayTrack_7: @ 0x030027B0
     .space TRACK_SIZE * NUM_TRACKS_7
     .size gMPlayTrack_7, .-gMPlayTrack_7

    .section .rodata

    .align 2
    .global gMPlayTable
gMPlayTable: @ 0x0827CCD8
    music_player gMPlayInfo_0, gMPlayTrack_0, NUM_TRACKS_0, 0
    music_player gMPlayInfo_1, gMPlayTrack_1, NUM_TRACKS_1, 0
    music_player gMPlayInfo_2, gMPlayTrack_2, NUM_TRACKS_2, 0
    music_player gMPlayInfo_3, gMPlayTrack_3, NUM_TRACKS_3, 0
    music_player gMPlayInfo_4, gMPlayTrack_4, NUM_TRACKS_4, 0
    music_player gMPlayInfo_5, gMPlayTrack_5, NUM_TRACKS_5, 0
    music_player gMPlayInfo_6, gMPlayTrack_6, NUM_TRACKS_6, 0
    music_player gMPlayInfo_7, gMPlayTrack_7, NUM_TRACKS_7, 0
