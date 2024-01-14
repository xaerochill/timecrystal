	object_const_def
	const SEAFOAMISLANDS1F_LORELEI
	const SEAFOAMISLANDS1F_BEAUTY
	const SEAFOAMISLANDS1F_BOULDER1
	const SEAFOAMISLANDS1F_BOULDER2

SeafoamIslands1F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_STONETABLE, .SetUpStoneTable

.SetUpStoneTable:
	usestonetable .StoneTable
	endcallback

.StoneTable:
	stonetable 6, SEAFOAMISLANDS1F_BOULDER1, .Boulder1
	stonetable 7, SEAFOAMISLANDS1F_BOULDER2, .Boulder2
	db -1 ; end

.Boulder1:
	disappear SEAFOAMISLANDS1F_BOULDER1
	clearevent EVENT_BOULDER_IN_SEAFOAM_B1F_1
	sjump .Fall

.Boulder2:
	disappear SEAFOAMISLANDS1F_BOULDER2
	clearevent EVENT_BOULDER_IN_SEAFOAM_B1F_2
	sjump .Fall

.Fall:
	pause 30
	scall .FX
	opentext
	writetext SeafoamIslands1FBoulderFellText
	waitbutton
	closetext
	end

.FX:
	playsound SFX_STRENGTH
	earthquake 80
	end

SeafoamIslands1FBoulder:
	jumpstd StrengthBoulderScript

SeafoamIslands1FBoulderFellText:
	text "The boulder fell"
	line "through!"
	done

TrainerLorelei:
	trainer LORELEI, LORELEI1, EVENT_BEAT_LORELEI, LoreleiSeenText, LoreleiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LoreleiAfterBattleText
	waitbutton
	closetext
	end

TrainerBeautyCarlene:
	trainer BEAUTY, CARLENE, EVENT_BEAT_BEAUTY_CARLENE, BeautyCarleneSeenText, BeautyCarleneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BeautyCarleneAfterBattleText
	waitbutton
	closetext
	end

LoreleiSeenText:
	text "Keep your"
	line "filthy hands"
	cont "off the #MON"
	cont "in this cave."

	para "Do as I say, or"
	line "you will have me"
	cont "to answer to!"
	done

LoreleiBeatenText:
	text "How dare you!"
	done

LoreleiAfterBattleText:
	text "You are better"
	line "than I thought."
	cont "Go on ahead!"

	para "You only got a"
	line "glimpse of the"
	cont "power of ice-type"
	cont "#MON!"
	done

BeautyCarleneSeenText:
	text "Beware! MISTY"
	line "is not the only"
	cont "strong trainer"
	cont "coming here."
	done

BeautyCarleneBeatenText:
	text "You are strong."
	line "Thanks for the"
	cont "good fight!"
	done

BeautyCarleneAfterBattleText:
	text "I wonder if you"
	line "are a match for"
	cont "LORELEI…"
	done

SeafoamIslands1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 15, ROUTE_20, 1
	warp_event 26, 15, ROUTE_20, 2
	warp_event  7,  7, SEAFOAM_ISLANDS_B1F, 2
	warp_event 25,  3, SEAFOAM_ISLANDS_B1F, 7
	warp_event 23, 15, SEAFOAM_ISLANDS_B1F, 5
	warp_event 16,  7, SEAFOAM_ISLANDS_B1F, 8 ; hole
	warp_event 23,  6, SEAFOAM_ISLANDS_B1F, 9 ; hole

	def_coord_events

	def_bg_events

	def_object_events
	object_event 22,  9, SPRITE_LORELEI, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerLorelei, -1
	object_event 14, 14, SPRITE_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerBeautyCarlene, -1
	object_event 18, 11, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslands1FBoulder, EVENT_BOULDER_IN_SEAFOAM_1F_1
	object_event 26,  7, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslands1FBoulder, EVENT_BOULDER_IN_SEAFOAM_1F_2
