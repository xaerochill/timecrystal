	object_const_def
	const SEAFOAMISLANDSB2F_SKIER
	const SEAFOAMISLANDSB2F_BOARDER1
	const SEAFOAMISLANDSB2F_BOARDER2
	const SEAFOAMISLANDSB2F_BOULDER1
	const SEAFOAMISLANDSB2F_BOULDER2

SeafoamIslandsB2F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_STONETABLE, .SetUpStoneTable

.SetUpStoneTable:
	usestonetable .StoneTable
	endcallback

.StoneTable:
	stonetable 10, SEAFOAMISLANDSB2F_BOULDER1, .Boulder1
	stonetable 11, SEAFOAMISLANDSB2F_BOULDER2, .Boulder2
	db -1 ; end

.Boulder1:
	disappear SEAFOAMISLANDSB2F_BOULDER1
	clearevent EVENT_BOULDER_IN_SEAFOAM_B3F_1
	sjump .Fall

.Boulder2:
	disappear SEAFOAMISLANDSB2F_BOULDER2
	clearevent EVENT_BOULDER_IN_SEAFOAM_B3F_2
	sjump .Fall

.Fall:
	pause 30
	scall .FX
	opentext
	writetext SeafoamIslandsB2FBoulderFellText
	waitbutton
	closetext
	end

.FX:
	playsound SFX_STRENGTH
	earthquake 80
	end

SeafoamIslandsB2FBoulder:
	jumpstd StrengthBoulderScript

SeafoamIslandsB2FBoulderFellText:
	text "The boulder fell"
	line "through!"
	done

TrainerSkierCady:
	trainer SKIER, CADY, EVENT_BEAT_SKIER_CADY, SkierCadySeenText, SkierCadyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SkierCadyAfterBattleText
	waitbutton
	closetext
	end

TrainerBoarderShaun:
	trainer BOARDER, SHAUN, EVENT_BEAT_BOARDER_SHAUN, BoarderShaunSeenText, BoarderShaunBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BoarderShaunAfterBattleText
	waitbutton
	closetext
	end

TrainerBoarderBryce:
	trainer BOARDER, BRYCE, EVENT_BEAT_BOARDER_BRYCE, BoarderBryceSeenText, BoarderBryceBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BoarderBryceAfterBattleText
	waitbutton
	closetext
	end

SkierCadySeenText:
	text "Did you know the"
	line "SEAFOAM ISLANDS"

	para "used to be one"
	line "single island?"
	done

SkierCadyBeatenText:
	text "You must be fun"
	line "at parties..."
	done

SkierCadyAfterBattleText:
	text "I wonder what"
	line "would happen here"

	para "if the CINNABAR"
	line "volcano erupted."
	done

BoarderShaunSeenText:
	text "Finally! Not many"
	line "people come down"
	cont "here anymore."

BoarderShaunBeatenText:
	text "Ouch! No wonder"
	line "I had no chance!"

	para "You are tough."
	done

BoarderShaunAfterBattleText:
	text "People are tense"
	line "because the"

	para "volcano is active"
	line "again recently."
	done

BoarderBryceSeenText:
	text "You want to go"
	line "further down?"

	para "Hah! Better have"
	line "ICE HEAL!"
	done

BoarderBryceBeatenText:
	text "I have crashed"
	line "and you rock!"
	cont "Go on."
	done

BoarderBryceAfterBattleText:
	text "Be careful! Who"
	line "know what lies"
	cont "ahead down there."
	done

SeafoamIslandsB2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  3, SEAFOAM_ISLANDS_B1F, 1
	warp_event  5, 13, SEAFOAM_ISLANDS_B3F, 1
	warp_event 13,  7, SEAFOAM_ISLANDS_B1F, 3
	warp_event 17, 15, SEAFOAM_ISLANDS_B1F, 4
	warp_event 25,  5, SEAFOAM_ISLANDS_B3F, 4
	warp_event 23, 13, SEAFOAM_ISLANDS_B1F, 6
	warp_event 25, 13, SEAFOAM_ISLANDS_B3F, 5
	warp_event 20,  4, SEAFOAM_ISLANDS_B1F, 10 ; hole (from)
	warp_event 21,  9, SEAFOAM_ISLANDS_B1F, 11 ; hole (from)
	warp_event 20,  5, SEAFOAM_ISLANDS_B3F, 8 ; hole
	warp_event 21,  8, SEAFOAM_ISLANDS_B3F, 9 ; hole

	def_coord_events

	def_bg_events

	def_object_events
	object_event 24, 13, SPRITE_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerSkierCady, -1
	object_event 10,  9, SPRITE_ROCKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBoarderShaun, -1
	object_event  3,  4, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBoarderBryce, -1
	object_event 18,  6, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB2FBoulder, EVENT_BOULDER_IN_SEAFOAM_B2F_1
	object_event 23,  8, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB2FBoulder, EVENT_BOULDER_IN_SEAFOAM_B2F_2
