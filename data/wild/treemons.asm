TreeMons:
; entries correspond to TREEMON_SET_* constants
	table_width 2, TreeMons
	dw TreeMonSet_Unused
	dw TreeMonSet_Canyon
	dw TreeMonSet_Town
	dw TreeMonSet_Route
	dw TreeMonSet_Kanto
	dw TreeMonSet_Lake
	dw TreeMonSet_Forest
	dw TreeMonSet_Rock
	dw TreeMonSet_City
	assert_table_length NUM_TREEMON_SETS

; Two tables each (common, rare).
; Structure:
;	db  %, species, level

TreeMonSet_City:
; common
	db 50, SPEAROW,    14
	db 15, SPEAROW,    16
	db 15, SPEAROW,    16
	db 10, AIPOM,      18
	db  5, AIPOM,      18
	db  5, AIPOM,      18
	db -1
; rare
	db 50, SPEAROW,    14
	db 15, HERACROSS,  16
	db 15, HERACROSS,  16
	db 10, AIPOM,      18
	db  5, AIPOM,      18
	db  5, AIPOM,      18
	db -1
TreeMonSet_Canyon:
; common
	db 50, SPEAROW,    14
	db 15, SPEAROW,    16
	db 15, SPEAROW,    16
	db 10, SHUCKLE,    18
	db  5, SHUCKLE,    18
	db  5, SHUCKLE,    18
	db -1
; rare
	db 50, SPEAROW,    14
	db 15, HERACROSS,  16
	db 15, HERACROSS,  16
	db 10, SHUCKLE,    18
	db  5, SHUCKLE,    18
	db  5, SHUCKLE,    18
	db -1

TreeMonSet_Town:
; common
	db 50, SPEAROW,    14
	db 15, EKANS,      16
	db 15, SPEAROW,    16
	db 10, AIPOM,      18
	db  5, AIPOM,      18
	db  5, AIPOM,      18
	db -1
; rare
	db 50, SPEAROW,    14
	db 15, HERACROSS,  16
	db 15, HERACROSS,  16
	db 10, AIPOM,      18
	db  5, AIPOM,      18
	db  5, AIPOM,      18
	db -1

TreeMonSet_Route:
; common
	db 50, HOOTHOOT,   14
	db 15, SPINARAK,   16
	db 15, LEDYBA,     16
	db 10, EXEGGCUTE,  18
	db  5, EXEGGCUTE,  18
	db  5, EXEGGCUTE,  18
	db -1
; rare
	db 50, HOOTHOOT,   14
	db 15, PINECO,     16
	db 15, PINECO,     16
	db 10, EXEGGCUTE,  18
	db  5, EXEGGCUTE,  18
	db  5, EXEGGCUTE,  18
	db -1

TreeMonSet_Kanto:
; common
	db 50, SPEAROW,    14
	db 15, EKANS,      16
	db 15, SPEAROW,    16
	db 10, EXEGGCUTE,  16
	db  5, ARBOK,      18
	db  5, ARBOK,      18
	db -1
; rare
	db 50, SPEAROW,    14
	db 15, PINECO,     16
	db 15, PINECO,     16
	db 10, TANGELA,    18
	db  5, TANGELA,    18
	db  5, TANGELA,    18
	db -1

TreeMonSet_Lake:
; common
	db 50, HOOTHOOT,   14
	db 15, VENONAT,    14
	db 15, PARAS,      16
	db 10, EXEGGCUTE,  16
	db  5, EXEGGCUTE,  16
	db  5, PARASECT,   18
	db -1
; rare
	db 50, HOOTHOOT,   14
	db 15, PINECO,     16
	db 15, PARAS,      16
	db 10, EXEGGCUTE,  16
	db  5, EXEGGCUTE,  16
	db  5, PARASECT,   18
	db -1

TreeMonSet_Forest:
; common
	db 50, HOOTHOOT,   14
	db 15, PINECO,     16
	db 15, PINECO,     16
	db 10, NOCTOWL,    18
	db  5, BUTTERFREE, 18
	db  5, BEEDRILL,   18
	db -1
; rare
	db 50, HOOTHOOT,   14
	db 15, LEDYBA,     16
	db 15, SPINARAK,   16
	db 10, LEDIAN,     18
	db  5, ARIADOS,    18
	db  5, ARIADOS,    18
	db -1

TreeMonSet_Rock:
	db 90, KRABBY,     20
	db 10, SHUCKLE,    20
	db -1

TreeMonSet_Unused:
	db -1 ; placeholder so that TreeMonSetCity actually works