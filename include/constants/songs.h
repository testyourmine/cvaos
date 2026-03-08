#ifndef SONGS_CONSTANTS_H
#define SONGS_CONSTANTS_H

#include "m4a_internal.h"

#define AUDIO_COMMAND_BASE 0x1000

#define AUDIO_STOP   (AUDIO_COMMAND_BASE + 0x0)
#define AUDIO_PAUSE  (AUDIO_COMMAND_BASE + 0x2)
#define AUDIO_RESUME (AUDIO_COMMAND_BASE + 0x3)

#define AUDIO_6BIT (AUDIO_COMMAND_BASE + 0x6)
#define AUDIO_7BIT (AUDIO_COMMAND_BASE + 0x7)
#define AUDIO_8BIT (AUDIO_COMMAND_BASE + 0x8)
#define AUDIO_9BIT (AUDIO_COMMAND_BASE + 0x9)

#define SONG_MUTE  (AUDIO_COMMAND_BASE + 0x10)
#define SONG_LOUD  (AUDIO_COMMAND_BASE + 0x11)
#define SONG_QUIET (AUDIO_COMMAND_BASE + 0x12)

#define AUDIO_FREQ_BASE         (AUDIO_COMMAND_BASE + 0x20)
#define AUDIO_FREQ_OFFSET(freq) ((freq) >> SOUND_MODE_FREQ_SHIFT)
#define AUDIO_FREQ(freq)        (AUDIO_FREQ_BASE + AUDIO_FREQ_OFFSET(freq))

#define MUSIC_PLAYER_STOP_BASE    (AUDIO_COMMAND_BASE + 0x30)
#define MUSIC_PLAYER_STOP(chan)   (MUSIC_PLAYER_STOP_BASE + (chan))

#define MUSIC_PLAYER_RESUME_BASE  (AUDIO_COMMAND_BASE + 0x38)
#define MUSIC_PLAYER_RESUME(chan) (MUSIC_PLAYER_RESUME_BASE + (chan))

#define MUSIC_PLAYER_MUTE_BASE    (AUDIO_COMMAND_BASE + 0x40)
#define MUSIC_PLAYER_MUTE(chan)   (MUSIC_PLAYER_MUTE_BASE + (chan))

#define STOP_SONG 0x8000

enum Songs {
    MUS_DUMMY,  // Silence
    MUS_1,  // Clock Tower
    MUS_2,  // Ruined Castle Corridor
    MUS_3,  // Underground Reservoir
    MUS_4,  // Demon Castle Top Floor
    MUS_5,  // Dance Hall
    MUS_6,  // Phantom Palace
    MUS_7,  // Demon Castle Study
    MUS_8,  // Chapel
    MUS_9,  // Forgotten Garden
    MUS_10, // The Purgatory Arena
    MUS_11, // Sacred Cave
    MUS_12, // Chaotic Realm
    MUS_13, // Hammer Company
    MUS_14, // Name Entry
    MUS_15, // Game Over
    MUS_16, // Confrontation
    MUS_17, // A Formidable Foe Appears
    MUS_18, // Final Decisive Battle
    MUS_19, // Battle for the Throne
    MUS_20, // Don't Wait Until Night
    MUS_21, // Prologue ~ Mina's Theme
    MUS_22, // Premonition
    MUS_23, // Premonition (again?)
    MUS_24, // Ending
    MUS_25, // Premonition (again?) (again?)
    MUS_26, // Staff Roll
    MUS_27, // Black Sun
    MUS_28, // Sacred Cave (again?)
    MUS_29, // Prologue ~ Mina's Theme (again?)
    MUS_30, // Hammer Company (again?)
    MUS_31, // Battle Against Chaos
    MUS_32, // Purification ~ Ending
    MUS_33, // Fate of the Devil
    MUS_34, // Fate of the Devil (again?)
    MUS_35, // You're Not Alone
    MUS_36, // You're Not Alone (again?)
    MUS_37, // Outdoor/Ambient 1
    MUS_38, // Outdoor/Ambient 2
    MUS_39, // Outdoor/Ambient 3
    MUS_40, // Outdoor/Ambient 4
    MUS_41, // Outdoor/Ambient 5
    MUS_42, // Outdoor/Ambient 6
    MUS_43, // Outdoor/Ambient 7
    MUS_44, // Outdoor/Ambient 8
    MUS_45, // Outdoor/Ambient 9
    MUS_COUNT,

    MUS_46 = MUS_COUNT, // Silence for Music Player 0
    MUS_47, // Silence for Music Player 1
    MUS_48, // Silence for Music Player 2
    MUS_49, // Silence for Music Player 3
    MUS_50, // Silence for Music Player 4
    MUS_51, // Silence for Music Player 5
    MUS_52, // Silence for Music Player 6
    MUS_53, // Silence for Music Player 7

    SE_100 = 100,
    SE_101,
    SE_102,
    SE_103,
    SE_104,
    SE_105,
    SE_106,
    SE_107,
    SE_108,
    SE_109,
    SE_110,
    SE_111,
    SE_112,
    SE_113,
    SE_114,
    SE_115,
    SE_116,
    SE_117,
    SE_118,
    SE_119,
    SE_120,
    SE_121,
    SE_122,
    SE_123,
    SE_124,
    SE_125,
    SE_126,
    SE_127,
    SE_128,
    SE_129,
    SE_130,
    SE_131,
    SE_132,
    SE_133,
    SE_134,
    SE_135,
    SE_136,
    SE_137,
    SE_138,
    SE_139,
    SE_140,
    SE_141,
    SE_142,
    SE_143,
    SE_144,
    SE_145,
    SE_146,
    SE_147,
    SE_148,
    SE_149,
    SE_150,
    SE_151,
    SE_152,
    SE_153,
    SE_154,
    SE_155,
    SE_156,
    SE_157,
    SE_158,
    SE_159,
    SE_160,
    SE_161,
    SE_162,
    SE_163,
    SE_164,
    SE_165,
    SE_166,
    SE_167,
    SE_168,
    SE_169,
    SE_170,
    SE_171,
    SE_172,
    SE_173,
    SE_174,
    SE_175,
    SE_176,
    SE_177,
    SE_178,
    SE_179,
    SE_180,
    SE_181,
    SE_182,
    SE_183,
    SE_184,
    SE_185,
    SE_186,
    SE_187,
    SE_188,
    SE_189,
    SE_190,
    SE_191,
    SE_192,
    SE_193,
    SE_194,
    SE_195,
    SE_196,
    SE_197,
    SE_198,
    SE_199,
    SE_200,
    SE_201,
    SE_202,
    SE_203,
    SE_204,
    SE_205,
    SE_206,
    SE_207,
    SE_208,
    SE_209,
    SE_210,
    SE_211,
    SE_212,
    SE_213,
    SE_214,
    SE_215,
    SE_216,
    SE_217,
    SE_218,
    SE_219,
    SE_220,
    SE_221,
    SE_222,
    SE_223,
    SE_224,
    SE_225,
    SE_226,
    SE_227,
    SE_228,
    SE_229,
    SE_230,
    SE_231,
    SE_232,
    SE_233,
    SE_234,
    SE_235,
    SE_236,
    SE_237,
    SE_238,
    SE_239,
    SE_240,
    SE_241,
    SE_242,
    SE_243,
    SE_244,
    SE_245,
    SE_246,
    SE_247,
    SE_248,
    SE_249,
    SE_250,
    SE_251,
    SE_252,
    SE_253,
    SE_254,
    SE_255,
    SE_256,
    SE_257,
    SE_258,
    SE_259,
    SE_260,
    SE_261,
    SE_262, // Silence
    SE_263, // Silence
    SE_264, // Silence
    SE_265, // Silence
    SE_266, // Silence
    SE_267, // Silence
    SE_268,
    SE_269,
    SE_270,
    SE_271,
    SE_272,
    SE_273,
    SE_274,
    SE_275,
    SE_276,
    SE_277,
    SE_278,
    SE_279,
    SE_280,
    SE_281,
    SE_282,
    SE_283,
    SE_284,
    SE_285,
    SE_286,
    SE_287,
    SE_288,
    SE_289,
    SE_290,
    SE_291,
    SE_292,
    SE_293,
    SE_294,
    SE_295,
    SE_296,
    SE_297,
    SE_298,
    SE_299,
    SE_300,
    SE_301,
    SE_302,
    SE_303,
    SE_304,
    SE_305,
    SE_306,
    SE_307,
    SE_308,
    SE_309,
    SE_310,
    SE_311,
    SE_312,
    SE_313,
    SE_314,
    SE_315,
    SE_316, // Silence
    SE_317, // Silence
    SE_318,
    SE_319, // Silence
    SE_320,
    SE_321,
    SE_322,
    SE_323,
    SE_324,
    SE_325,
    SE_326,
    SE_327,
    SE_328,
    SE_329,
    SE_330,
    SE_331,
    SE_332,
    SE_333,
    SE_334,
    SE_335,
    SE_336,
    SE_337,
    SE_338,
    SE_339,
    SE_340,
    SE_341,
    SE_342,
    SE_343,
    SE_344,
    SE_345,
    SE_346,
    SE_347,
    SE_348,
    SE_349,
    SE_350,
    SE_351,
    SE_352,
    SE_353,
    SE_354,
    SE_355,
    SE_356,
    SE_357,
    SE_358,
    SE_359,
    SE_360,
    SE_361,
    SE_362,
    SE_363,
    SE_364,
    SE_365,
    SE_366,
    SE_367,
    SE_368,

    SE_400 = 400,
    SE_401,
    SE_402,
    SE_403,
    SE_404,
    SE_405,
    SE_406,
    SE_407,
    SE_408,
    SE_409,
    SE_410,
    SE_411,
    SE_412,
    SE_413,
    SE_414,
    SE_415,
    SE_416,
    SE_417,
    SE_418,
    SE_419,
    SE_420,
    SE_421,
    SE_422,
    SE_423,
    SE_424,
    SE_425,
    SE_426,
    SE_427,
    SE_428,
    SE_429,
    SE_430,
    SE_431,
    SE_432,
    SE_433,
    SE_434,
    SE_435,
    SE_436,
    SE_437,
    SE_438,
    SE_439,
    SE_440,
    SE_441,
    SE_442,
    SE_443,
    SE_444,
    SE_445,
    SE_446,
    SE_447,
    SE_448,
    SE_449,
    SE_450,
    SE_451,
    SE_452,
    SE_453,
    SE_454,
    SE_455,
    SE_456,
    SE_457,
    SE_458,
    SE_459,
    SE_460,
    SE_461,
    SE_462,
    SE_463,
    SE_464,
    SE_465,
    SE_466,
    SE_467,
    SE_468,
    SE_469,
    SE_470,
    SE_471,
    SE_472,
    SE_473,
    SE_474,
    SE_475,
    SE_476,
    SE_477,
    SE_478,
    SE_479,
    SE_480,
    SE_481,
    SE_482,
    SE_483,
    SE_484,
    SE_485,
    SE_486,
    SE_487,
    SE_488,
    SE_489,
    SE_490,
    SE_491,
    SE_492,
    SE_493,
    
    SONG_COUNT
};

#endif /* SONGS_CONSTANTS_H */