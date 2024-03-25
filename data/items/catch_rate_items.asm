; Pokémon traded from RBY do not have held items, so GSC interprets the
; catch rate as an item. The following items are carried over:
; Brightpowder  (3) - LEGENDARIES

; However, if the catch rate (in parantheses) appears in this table, 
; the item associated with the table entry is used instead.

TimeCapsule_CatchRateItems:
	db BURN_HEAL, DRAGON_FANG      ; 09 (9)   - DRAGONITE (Y)
	db HP_UP, LEFTOVERS            ; 19 (25)  - SNORLAX & CLEFABLE
	db IRON, DRAGON_SCALE          ; 1b (27)  - DRAGONAIR (Y)
	db CALCIUM, LUCKY_PUNCH        ; 1e (30)  - CHANSEY
	db NUGGET, METAL_POWDER        ; 23 (35)  - DITTO
	db SODA_POP, GOLD_LEAF         ; 2d (45)
	db X_SPECIAL, GOLD_BERRY       ; 32 (50)
	db ETHER, SILVER_LEAF          ; 3c (60)
	db MINT_BERRY, MYSTERYBERRY    ; 4b (75)
	db PNK_APRICORN, EGG_TICKET    ; 5a (90)
	db NEVERMELTICE, EGG_TICKET    ; 60 (96)  - KADABRA (Y)
	db BIG_PEARL, TWISTEDSPOON     ; 64 (100) - KADABRA (R/B)
	db HELIX_FOSSIL, BERRY         ; 78 (120)
	db LITEBLUEMAIL, MOON_STONE    ; 96 (150) - CLEFAIRY
	db TM_TOXIC, LIGHT_BALL        ; a3 (163) - PIKACHU (Y)
	db TM_ICE_BEAM, POLKADOT_BOW   ; aa (170) - JIGGLYPUFF
	db TM_IRON_TAIL, BRICK_PIECE   ; b4 (180) - MACHOP
	db TM_REFLECT, BRICK_PIECE     ; be (190)
	db TM_SKY_ATTACK, TWISTEDSPOON ; c8 (200) - ABRA
	db TM_COUNTER, BRICK_PIECE     ; e1 (225)
	db TM_PROTECT, BERRY           ; eb (235) - NIDORAN
	db HM_SURF, BERRY              ; fa (250)
	db -1, MYSTERYBERRY            ; ff (255)
	db 0, BERRY                    ; end
	