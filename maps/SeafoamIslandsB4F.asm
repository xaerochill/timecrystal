	object_const_def
	const SEAFOAM_ISLANDS_B4F_ARTICUNO
	const SEAFOAMISLANDSB4F_BOULDER1
	const SEAFOAMISLANDSB4F_BOULDER2
	const SEAFOAMISLANDSB4F_CURRENT

SeafoamIslandsB4F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, SeafoamIslandsB4FCurrentCallback
	callback MAPCALLBACK_OBJECTS, SeafoamIslandsB4FArticunoCallback

SeafoamIslandsB4FCurrentCallback:
	checkevent EVENT_BOTH_BOULDERS_IN_SEAFOAM_B4F
	iftrue .CalmWaterB4FCallback
	iffalse .CheckBoulderScript
	endcallback

.CalmWaterB4FCallback:
	changeblock  6, 16, $01 ; water
	changeblock  6, 18, $01 ; water
	changeblock  6, 14, $01 ; water
	changeblock  8, 14, $01 ; water
	changeblock 10, 14, $01 ; water
	endcallback

.CheckBoulderScript:
	checkevent EVENT_BOULDER_IN_SEAFOAM_B4F_1
	iftrue .NeedsBoulderB4F
	checkevent EVENT_BOULDER_IN_SEAFOAM_B4F_2
	iftrue .NeedsBoulderB4F
.CalmWaterB4F:
	changeblock  6, 16, $01 ; water
	changeblock  6, 18, $01 ; water
	changeblock  6, 14, $01 ; water
	changeblock  8, 14, $01 ; water
	changeblock 10, 14, $01 ; water
	reloadmappart
	setevent EVENT_BOTH_BOULDERS_IN_SEAFOAM_B4F

.NeedsBoulderB4F:
	endcallback

SeafoamIslandsB4FArticunoCallback:
	checkevent EVENT_FOUGHT_ARTICUNO
	iftrue .NoAppear
	checkevent ENGINE_UNLOCKED_UNOWNS_A_TO_K
	iffalse .NoAppear

.Appear:
	appear SEAFOAM_ISLANDS_B4F_ARTICUNO
	endcallback

.NoAppear:
	disappear SEAFOAM_ISLANDS_B4F_ARTICUNO
	endcallback

SeafoamIslandsB4FArticuno:
	faceplayer
	opentext
	writetext ArticunoText
	cry ARTICUNO
	pause 15
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon ARTICUNO, 50
	startbattle
	disappear SEAFOAM_ISLANDS_B4F_ARTICUNO
	setevent EVENT_FOUGHT_ARTICUNO
	reloadmapafterbattle
	end

SeafoamIslandsB4FBoulder:
	jumpstd StrengthBoulderScript

SeafoamIslandsB4FCurrent:
	jumptext SeafoamIslandsB4FCurrentText

ArticunoText:
	text "Gyaoo!"
	done

SeafoamIslandsB4FCurrentText:
	text "The current is"
	line "way too strong!"
	done

SeafoamIslandsB4F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 22, 19, SEAFOAM_ISLANDS_B3F, 6
	warp_event 23, 19, SEAFOAM_ISLANDS_B3F, 7
	warp_event 13, 11, SEAFOAM_ISLANDS_B3F, 2 ; waterfall
	warp_event 27,  5, SEAFOAM_ISLANDS_B3F, 3 ; waterfall
	warp_event  6, 18, SEAFOAM_ISLANDS_B3F, 8 ; hole (from)
	warp_event  7, 18, SEAFOAM_ISLANDS_B3F, 9 ; hole (from)

	def_coord_events

	def_bg_events

	def_object_events
	object_event  8,  3, SPRITE_MOLTRES, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB4FArticuno, EVENT_SEAFOAM_ISLANDS_ARTICUNO
	object_event  7, 19, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB4FBoulder, EVENT_BOULDER_IN_SEAFOAM_B4F_1
	object_event  6, 19, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB4FBoulder, EVENT_BOULDER_IN_SEAFOAM_B4F_2
	object_event 11, 14, SPRITE_NONE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB4FCurrent, EVENT_BOTH_BOULDERS_IN_SEAFOAM_B4F
