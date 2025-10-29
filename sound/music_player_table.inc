    .equiv TRACK_SIZE, 0x50

@    .section ewram_data
@    .align 2

@ gMPlayTrack_0: @ 0x03002260
@     .space TRACK_SIZE * 7
@     .size gMPlayTrack_0, .-gMPlayTrack_0
@ 
@ gMPlayTrack_1: @ 0x03002490
@     .space TRACK_SIZE * 5
@     .size gMPlayTrack_1, .-gMPlayTrack_1
@ 
@ gMPlayTrack_2: @ 0x03002620
@     .space TRACK_SIZE * 1
@     .size gMPlayTrack_2, .-gMPlayTrack_2
@ 
@ gMPlayTrack_3: @ 0x03002670
@     .space TRACK_SIZE * 1
@     .size gMPlayTrack_3, .-gMPlayTrack_3
@ 
@ gMPlayTrack_4: @ 0x030026C0
@     .space TRACK_SIZE * 1
@     .size gMPlayTrack_4, .-gMPlayTrack_4
@ 
@ gMPlayTrack_5: @ 0x03002710
@     .space TRACK_SIZE * 1
@     .size gMPlayTrack_5, .-gMPlayTrack_5
@ 
@ gMPlayTrack_6: @ 0x03002760
@     .space TRACK_SIZE * 1
@     .size gMPlayTrack_6, .-gMPlayTrack_6
@ 
@ gMPlayTrack_7: @ 0x030027B0
@     .space TRACK_SIZE * 1
@     .size gMPlayTrack_7, .-gMPlayTrack_7

@    .section .rodata
    .align 2
    .global gMPlayTable
gMPlayTable: @ 0x0827CCD8
    music_player gMPlayInfo_0, gMPlayTrack_0, 7, 0
    music_player gMPlayInfo_1, gMPlayTrack_1, 5, 0
    music_player gMPlayInfo_2, gMPlayTrack_2, 1, 0
    music_player gMPlayInfo_3, gMPlayTrack_3, 1, 0
    music_player gMPlayInfo_4, gMPlayTrack_4, 1, 0
    music_player gMPlayInfo_5, gMPlayTrack_5, 1, 0
    music_player gMPlayInfo_6, gMPlayTrack_6, 1, 0
    music_player gMPlayInfo_7, gMPlayTrack_7, 1, 0
