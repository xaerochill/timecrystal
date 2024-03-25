; item ids
; indexes for:
; - ItemNames (see data/items/names.asm)
; - ItemDescriptions (see data/items/descriptions.asm)
; - ItemAttributes (see data/items/attributes.asm)
; - ItemEffects (see engine/items/item_effects.asm)
	const_def
	const NO_ITEM      ; 00
	const MASTER_BALL  ; 01
	const ULTRA_BALL   ; 02
	const BRIGHTPOWDER ; 03
	const GREAT_BALL   ; 04
	const POKE_BALL    ; 05
	const BICYCLE      ; 06
	const MOON_STONE   ; 07
	const ANTIDOTE     ; 08
	const BURN_HEAL    ; 09
	const ICE_HEAL     ; 0a
	const AWAKENING    ; 0b
	const PARLYZ_HEAL  ; 0c
	const FULL_RESTORE ; 0d
	const MAX_POTION   ; 0e
	const HYPER_POTION ; 0f
	const SUPER_POTION ; 10
	const POTION       ; 11
	const ESCAPE_ROPE  ; 12
	const REPEL        ; 13
	const MAX_ELIXER   ; 14
	const FIRE_STONE   ; 15
	const THUNDERSTONE ; 16
	const WATER_STONE  ; 17
	const POCKET_PC    ; 18
	const HP_UP        ; 19
	const PROTEIN      ; 1a
	const IRON         ; 1b
	const CARBOS       ; 1c
	const LUCKY_PUNCH  ; 1d
	const CALCIUM      ; 1e
	const RARE_CANDY   ; 1f
	const X_ACCURACY   ; 20
	const LEAF_STONE   ; 21
	const METAL_POWDER ; 22
	const NUGGET       ; 23
	const POKE_DOLL    ; 24
	const FULL_HEAL    ; 25
	const REVIVE       ; 26
	const MAX_REVIVE   ; 27
	const GUARD_SPEC   ; 28
	const SUPER_REPEL  ; 29
	const MAX_REPEL    ; 2a
	const DIRE_HIT     ; 2b
	const FRESH_WATER  ; 2c
	const SODA_POP     ; 2d
	const LEMONADE     ; 2e
	const X_ATTACK     ; 2f
	const X_DEFEND     ; 30
	const X_SPEED      ; 31
	const X_SPECIAL    ; 32
	const COIN_CASE    ; 33
	const ITEMFINDER   ; 34
	const POKE_FLUTE   ; 35
	const EXP_SHARE    ; 36
	const OLD_ROD      ; 37
	const GOOD_ROD     ; 38
	const SILVER_LEAF  ; 39
	const SUPER_ROD    ; 3a
	const PP_UP        ; 3b
	const ETHER        ; 3c
	const MAX_ETHER    ; 3d
	const ELIXER       ; 3e
	const MOOMOO_MILK  ; 3f
	const QUICK_CLAW   ; 40
	const PSNCUREBERRY ; 41
	const GOLD_LEAF    ; 42
	const SOFT_SAND    ; 43
	const SHARP_BEAK   ; 44
	const PRZCUREBERRY ; 45
	const BURNT_BERRY  ; 46
	const ICE_BERRY    ; 47
	const POISON_BARB  ; 48
	const KINGS_ROCK   ; 49
	const BITTER_BERRY ; 4a
	const MINT_BERRY   ; 4b
	const RED_APRICORN ; 4c
	const TINYMUSHROOM ; 4d
	const BIG_MUSHROOM ; 4e
	const SILVERPOWDER ; 4f
	const BLU_APRICORN ; 50
	const AMULET_COIN  ; 51
	const YLW_APRICORN ; 52
	const GRN_APRICORN ; 53
	const CLEANSE_TAG  ; 54
	const MYSTIC_WATER ; 55
	const TWISTEDSPOON ; 56
	const WHT_APRICORN ; 57
	const BLACKBELT_I  ; 58
	const BLK_APRICORN ; 59
	const PNK_APRICORN ; 5a
	const BLACKGLASSES ; 5b
	const SLOWPOKETAIL ; 5c
	const PINK_BOW     ; 5d
	const STICK        ; 5e
	const SMOKE_BALL   ; 5f
	const NEVERMELTICE ; 60
	const MAGNET       ; 61
	const MIRACLEBERRY ; 62
	const PEARL        ; 63
	const BIG_PEARL    ; 64
	const EVERSTONE    ; 65
	const SPELL_TAG    ; 66
	const RAGECANDYBAR ; 67
	const GS_BALL      ; 68
	const BLUE_CARD    ; 69
	const MIRACLE_SEED ; 6a
	const THICK_CLUB   ; 6b
	const FOCUS_BAND   ; 6c
	const ENERGYPOWDER ; 6d
	const ENERGY_ROOT  ; 6e
	const HEAL_POWDER  ; 6f
	const REVIVAL_HERB ; 70
	const HARD_STONE   ; 71
	const LUCKY_EGG    ; 72
	const EGG_TICKET   ; 73
	const STARDUST     ; 74
	const STAR_PIECE   ; 75
	const OLD_AMBER    ; 76
	const DOME_FOSSIL  ; 77
	const HELIX_FOSSIL ; 78
	const CHARCOAL     ; 79
	const BERRY_JUICE  ; 7a
	const SCOPE_LENS   ; 7b
	const METAL_COAT   ; 7c
	const DRAGON_FANG  ; 7d
	const LEFTOVERS    ; 7e
	const MYSTERYBERRY ; 7f
	const DRAGON_SCALE ; 80
	const BERSERK_GENE ; 81
	const SACRED_ASH   ; 82
	const HEAVY_BALL   ; 83
	const FLOWER_MAIL  ; 84
	const LEVEL_BALL   ; 85
	const LURE_BALL    ; 86
	const FAST_BALL    ; 87
	const LIGHT_BALL   ; 88
	const FRIEND_BALL  ; 89
	const MOON_BALL    ; 8a
	const LOVE_BALL    ; 8b
	const NORMAL_BOX   ; 8c
	const GORGEOUS_BOX ; 8d
	const SUN_STONE    ; 8e
	const POLKADOT_BOW ; 8f
	const UP_GRADE     ; 90
	const BERRY        ; 91
	const GOLD_BERRY   ; 92
	const PARK_BALL    ; 93
	const BRICK_PIECE  ; 94
	const SURF_MAIL    ; 95
	const LITEBLUEMAIL ; 96
	const PORTRAITMAIL ; 97
	const LOVELY_MAIL  ; 98
	const EON_MAIL     ; 99
	const MORPH_MAIL   ; 9a
	const BLUESKY_MAIL ; 9b
	const MUSIC_MAIL   ; 9c
	const MIRAGE_MAIL  ; 9d
DEF NUM_ITEMS EQU const_value - 1

DEF __tmhm_value__ = 1

MACRO add_tmnum
	DEF \1_TMNUM EQU __tmhm_value__
	DEF __tmhm_value__ += 1
ENDM

MACRO add_tm
; Defines three constants:
; - TM_\1: the item id, starting at $9e
; - \1_TMNUM: the learnable TM/HM flag, starting at 1
; - TM##_MOVE: alias for the move id, equal to the value of \1
	const TM_\1
	DEF TM{02d:__tmhm_value__}_MOVE = \1
	add_tmnum \1
ENDM

; see data/moves/tmhm_moves.asm for moves
DEF TM01 EQU const_value
	add_tm DYNAMICPUNCH ; 9e
	add_tm HEADBUTT     ; 9f
	add_tm SWORDS_DANCE ; a0
	add_tm ROLLOUT      ; a1
	add_tm MEGA_KICK    ; a2
	add_tm TOXIC        ; a3
	add_tm ZAP_CANNON   ; a4
	add_tm BODY_SLAM    ; a5
	add_tm PSYCH_UP     ; a6
	add_tm HIDDEN_POWER ; a7
	add_tm BUBBLEBEAM   ; a8
	add_tm SWEET_SCENT  ; a9
	add_tm ICE_BEAM     ; aa
	add_tm BLIZZARD     ; ab
	add_tm HYPER_BEAM   ; ac
	add_tm ICY_WIND     ; ad
	add_tm SUBMISSION   ; ad
	add_tm RAIN_DANCE   ; ae
	add_tm GIGA_DRAIN   ; b0
	add_tm ENDURE       ; b1
	add_tm MEGA_DRAIN   ; b2
	add_tm SOLARBEAM    ; b3
	add_tm IRON_TAIL    ; b4
	add_tm THUNDERBOLT  ; b5
	add_tm THUNDER      ; b6
	add_tm EARTHQUAKE   ; b7
	add_tm FISSURE      ; b8
	add_tm DIG          ; b9
	add_tm PSYCHIC_M    ; ba
	add_tm SHADOW_BALL  ; bb
	add_tm MUD_SLAP     ; bc
	add_tm DOUBLE_TEAM  ; bd
	add_tm REFLECT      ; be
	add_tm BIDE         ; bf
	add_tm FLAMETHROWER ; c0
	add_tm SLUDGE_BOMB  ; c1
	add_tm SANDSTORM    ; c2
	add_tm FIRE_BLAST   ; c3
	add_tm SWIFT        ; c4
	add_tm DEFENSE_CURL ; c5
	add_tm THUNDERPUNCH ; c6
	add_tm DREAM_EATER  ; c7
	add_tm SKY_ATTACK   ; c8
	add_tm REST         ; c9
	add_tm ATTRACT      ; ca
	add_tm PSYWAVE      ; cb
	add_tm EXPLOSION    ; cc
	add_tm ROCK_SLIDE   ; cd
	add_tm FURY_CUTTER  ; ce
	add_tm SUBSTITUTE   ; cf
	add_tm MEGA_PUNCH   ; d0
	add_tm RAZOR_WIND   ; d1
	add_tm CURSE        ; d2
	add_tm DRAGONBREATH ; d3
	add_tm ROAR         ; d4
	add_tm THIEF        ; d5
	add_tm STEEL_WING   ; d6
	add_tm ROCK_SMASH   ; d7
	add_tm TAKE_DOWN    ; d8
	add_tm DOUBLE_EDGE  ; d9
	add_tm SUNNY_DAY    ; da
	add_tm MIMIC        ; db
	add_tm SNORE        ; dc
	add_tm SWAGGER      ; dd
	add_tm SLEEP_TALK   ; de
	add_tm PAY_DAY      ; df
	add_tm RETURN       ; e0
	add_tm COUNTER      ; e1
	add_tm SEISMIC_TOSS ; e2
	add_tm RAGE         ; e3
	add_tm FRUSTRATION  ; e4
	add_tm WATER_GUN    ; e5
	add_tm ICE_PUNCH    ; e6
	add_tm WHIRLWIND    ; e7
	add_tm METRONOME    ; e8
	add_tm SELFDESTRUCT ; e9
	add_tm EGG_BOMB     ; ea
	add_tm PROTECT      ; eb
	add_tm CRUNCH       ; ec
	add_tm SKULL_BASH   ; ed
	add_tm SOFTBOILED   ; ee
	add_tm DRAGON_RAGE  ; ef
	add_tm DETECT       ; f0
	add_tm NIGHTMARE    ; f1
	add_tm THUNDER_WAVE ; f2
	add_tm LIGHT_SCREEN ; f3
	add_tm HORN_DRILL   ; f4
	add_tm FIRE_PUNCH   ; f5
	add_tm TRI_ATTACK   ; f6
	add_tm TELEPORT     ; f7
DEF NUM_TMS EQU __tmhm_value__ - 1

MACRO add_hm
; Defines three constants:
; - HM_\1: the item id, starting at $f8
; - \1_TMNUM: the learnable TM/HM flag, starting at 51
; - HM##_MOVE: alias for the move id, equal to the value of \1
	const HM_\1
	DEF HM_VALUE = __tmhm_value__ - NUM_TMS
	DEF HM{02d:HM_VALUE}_MOVE = \1
	add_tmnum \1
ENDM

DEF HM01 EQU const_value
	add_hm CUT          ; f8
	add_hm FLY          ; f9
	add_hm SURF         ; fa
	add_hm STRENGTH     ; fb
	add_hm FLASH        ; fc
	add_hm WHIRLPOOL    ; fd
	add_hm WATERFALL    ; fe
DEF NUM_HMS EQU __tmhm_value__ - NUM_TMS - 1

MACRO add_mt
; Defines two constants:
; - \1_TMNUM: the learnable TM/HM flag, starting at 58
; - MT##_MOVE: alias for the move id, equal to the value of \1
	DEF MT_VALUE = __tmhm_value__ - NUM_TMS - NUM_HMS
	DEF MT{02d:MT_VALUE}_MOVE = \1
	add_tmnum \1
ENDM

DEF MT01 EQU const_value
	add_mt PETAL_DANCE
	add_mt LOVELY_KISS
	add_mt SWEET_KISS
DEF NUM_TUTORS = __tmhm_value__ - NUM_TMS - NUM_HMS - 1

DEF NUM_TM_HM_TUTOR EQU NUM_TMS + NUM_HMS + NUM_TUTORS

DEF USE_SCRIPT_VAR EQU $00
DEF ITEM_FROM_MEM  EQU $ff

; leftovers from red
DEF SAFARI_BALL    EQU $08 ; MOON_STONE
DEF MOON_STONE_RED EQU $0a ; BURN_HEAL
DEF FULL_HEAL_RED  EQU $34 ; X_SPEED
