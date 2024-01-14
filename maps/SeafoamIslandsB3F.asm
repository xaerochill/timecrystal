	object_const_def
	const SEAFOAMISLANDSB3F_COOLTRAINERM
	const SEAFOAMISLANDSB3F_BOULDER1
	const SEAFOAMISLANDSB3F_BOULDER2
	const SEAFOAMISLANDSB3F_BOULDER3
	const SEAFOAMISLANDSB3F_BOULDER4
	const SEAFOAMISLANDSB3F_BOULDER5
	const SEAFOAMISLANDSB3F_BOULDER6
	
SeafoamIslandsB3F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_STONETABLE, SetUpStoneTable
	callback MAPCALLBACK_TILES, SeafoamIslandsB3FCurrentCallback
	callback MAPCALLBACK_OBJECTS, SeafoamIslandsB3FCurrent

SeafoamIslandsB3FCurrentCallback:
	checkevent EVENT_BOTH_BOULDERS_IN_SEAFOAM_B3F
	iftrue .CalmWaterB3FCallback
	endcallback

.CalmWaterB3FCallback:
	changeblock 20,  8, $01 ; water
	changeblock 16, 10, $01 ; water
	changeblock 18, 10, $01 ; water
	changeblock 20, 10, $01 ; water
	endcallback

SetUpStoneTable:
	usestonetable .StoneTable
	endcallback

.StoneTable:
	stonetable 11, SEAFOAMISLANDSB3F_BOULDER3, .Boulder1
	stonetable 10, SEAFOAMISLANDSB3F_BOULDER4, .Boulder2
	db -1 ; end

.Boulder1:
	disappear SEAFOAMISLANDSB3F_BOULDER3
	clearevent EVENT_BOULDER_IN_SEAFOAM_B4F_1
	sjump .Fall

.Boulder2:
	disappear SEAFOAMISLANDSB3F_BOULDER4
	clearevent EVENT_BOULDER_IN_SEAFOAM_B4F_2
	sjump .Fall

.Fall:
	pause 30
	scall .FX
	opentext
	writetext SeafoamIslandsB3FBoulderFellText
	waitbutton
	closetext
	end

.FX:
	playsound SFX_STRENGTH
	earthquake 80
	endcallback

SeafoamIslandsB3FBoulder:
	jumpstd StrengthBoulderScript

SeafoamIslandsB3FBoulderFellText:
	text "The boulder fell"
	line "through!"
	done

SeafoamIslandsB3FCurrent:
	checkevent EVENT_BOULDER_IN_SEAFOAM_B3F_1
	iftrue .NeedsBoulderB3F
	checkevent EVENT_BOULDER_IN_SEAFOAM_B3F_2
	iftrue .NeedsBoulderB3F
.CalmWaterB3F:
	changeblock 20,  8, $01 ; water
	changeblock 16, 10, $01 ; water
	changeblock 18, 10, $01 ; water
	changeblock 20, 10, $01 ; water
	reloadmappart
	setevent EVENT_BOTH_BOULDERS_IN_SEAFOAM_B3F

.NeedsBoulderB3F:
	endcallback

	TrainerCooltrainerSteve:
	trainer COOLTRAINERM, STEVE, EVENT_BEAT_COOLTRAINERM_STEVE, CooltrainerSteveSeenText, CooltrainerSteveBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerSteveAfterBattleText
	waitbutton
	closetext
	end

CooltrainerSteveSeenText:
	text "I have been to"
	line "wintry mountains"
	cont "looking for a"

	para "#MON called"
	line "ARTICUNO. I heard"
	cont "it roosts here."
	done

CooltrainerSteveBeatenText:
	text "I need to be more"
	line "careful, else I"
	cont "will not see it."
	done

CooltrainerSteveAfterBattleText:
	text "ARTICUNO must be"
	line "close. Try not to"
	cont "disturb it!"
	done

SeafoamIslandsB3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7, 13, SEAFOAM_ISLANDS_B2F, 2
	warp_event 11,  9, SEAFOAM_ISLANDS_B4F, 3
	warp_event 25,  5, SEAFOAM_ISLANDS_B4F, 4
	warp_event 29,  5, SEAFOAM_ISLANDS_B2F, 5
	warp_event 27, 15, SEAFOAM_ISLANDS_B2F, 7
	warp_event 22, 19, SEAFOAM_ISLANDS_B4F, 1  ; waterfall
	warp_event 23, 19, SEAFOAM_ISLANDS_B4F, 2  ; waterfall
	warp_event 20,  9, SEAFOAM_ISLANDS_B2F, 10 ; hole (from)
	warp_event 21,  9, SEAFOAM_ISLANDS_B2F, 11 ; hole (from)
	warp_event  4, 19, SEAFOAM_ISLANDS_B4F, 5  ; hole
	warp_event  9, 18, SEAFOAM_ISLANDS_B4F, 6  ; hole

	def_coord_events

	def_bg_events

	def_object_events
	object_event 11, 11, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerCooltrainerSteve, -1
	object_event 11, 16, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB2FBoulder, -1
	object_event  6, 16, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB2FBoulder, -1
	object_event 10, 16, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB2FBoulder, EVENT_BOULDER_IN_SEAFOAM_B3F_3
	object_event  4, 17, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB2FBoulder, EVENT_BOULDER_IN_SEAFOAM_B3F_4
	object_event 20,  8, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB2FBoulder, EVENT_BOULDER_IN_SEAFOAM_B3F_1
	object_event 21,  8, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB2FBoulder, EVENT_BOULDER_IN_SEAFOAM_B3F_2
