	object_const_def
	const SEAFOAM_ISLANDS_B4F_ARTICUNO

SeafoamIslandsB4F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, SeafoamIslandsB4FArticunoCallback
	
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

ArticunoText:
	text "Gyaoo!"
	done

SeafoamIslandsB4F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 20, 17, SEAFOAM_ISLANDS_B3F, 6
	warp_event 21, 17, SEAFOAM_ISLANDS_B3F, 7
	warp_event 11,  9, SEAFOAM_ISLANDS_B3F, 2
	warp_event 25,  3, SEAFOAM_ISLANDS_B3F, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  6,  1, SPRITE_MOLTRES, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB4FArticuno, EVENT_SEAFOAM_ISLANDS_ARTICUNO
