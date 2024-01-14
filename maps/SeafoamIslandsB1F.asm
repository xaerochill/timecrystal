	object_const_def
	const SEAFOAMISLANDSB1F_BEAUTY
	const SEAFOAMISLANDSB1F_BOULDER1
	const SEAFOAMISLANDSB1F_BOULDER2

SeafoamIslandsB1F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_STONETABLE, .SetUpStoneTable

.SetUpStoneTable:
	usestonetable .StoneTable
	endcallback

.StoneTable:
	stonetable 10, SEAFOAMISLANDSB1F_BOULDER1, .Boulder1
	stonetable 11, SEAFOAMISLANDSB1F_BOULDER2, .Boulder2
	db -1 ; end

.Boulder1:
	disappear SEAFOAMISLANDSB1F_BOULDER1
	clearevent EVENT_BOULDER_IN_SEAFOAM_B2F_1
	sjump .Fall

.Boulder2:
	disappear SEAFOAMISLANDSB1F_BOULDER2
	clearevent EVENT_BOULDER_IN_SEAFOAM_B2F_2
	sjump .Fall

.Fall:
	pause 30
	scall .FX
	opentext
	writetext SeafoamIslandsB1FBoulderFellText
	waitbutton
	closetext
	end

.FX:
	playsound SFX_STRENGTH
	earthquake 80
	end

SeafoamIslandsB1FBoulder:
	jumpstd StrengthBoulderScript

SeafoamIslandsB1FBoulderFellText:
	text "The boulder fell"
	line "through!"
	done

TrainerBeautyKendra:
	trainer BEAUTY, KENDRA, EVENT_BEAT_BEAUTY_KENDRA, BeautyKendraSeenText, BeautyKendraBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BeautyKendraAfterBattleText
	waitbutton
	closetext
	end

BeautyKendraSeenText:
	text "Hey there! Do you"
	line "want to fight?"

	para "I will tell you a"
	line "secret..."
	cont "if you win."
	done

BeautyKendraBeatenText:
	text "Oh mylanta! As I"
	line "promised, I will"
	cont "tell you now..."
	done

BeautyKendraAfterBattleText:
	text "We repopulated"
	line "SQUIRTLE here!"
	cont "They are so cute!"
	done

SeafoamIslandsB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  3, SEAFOAM_ISLANDS_B2F, 1
	warp_event  7,  7, SEAFOAM_ISLANDS_1F, 3
	warp_event 13,  7, SEAFOAM_ISLANDS_B2F, 3
	warp_event 19, 15, SEAFOAM_ISLANDS_B2F, 4
	warp_event 23, 15, SEAFOAM_ISLANDS_1F, 5
	warp_event 25, 11, SEAFOAM_ISLANDS_B2F, 6
	warp_event 25,  3, SEAFOAM_ISLANDS_1F, 4
	warp_event 18,  8, SEAFOAM_ISLANDS_1F, 6 ; hole (from)
	warp_event 23,  7, SEAFOAM_ISLANDS_1F, 7 ; hole (from)
	warp_event 18,  7, SEAFOAM_ISLANDS_B2F, 8 ; hole
	warp_event 23,  6, SEAFOAM_ISLANDS_B2F, 9 ; hole

	def_coord_events

	def_bg_events

	def_object_events
	object_event 13,  2, SPRITE_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerBeautyKendra, -1
	object_event 17,  8, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB1FBoulder, EVENT_BOULDER_IN_SEAFOAM_B1F_1
	object_event 22,  7, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB1FBoulder, EVENT_BOULDER_IN_SEAFOAM_B1F_2
