	object_const_def
	const CERULEAN_CAVE_B1F_MEWTWO

CeruleanCaveB1F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, CeruleanCaveB1FMewtwoCallback

CeruleanCaveB1FMewtwoCallback:
	checkevent EVENT_FOUGHT_MEWTWO
	iftrue .NoAppear
	checkevent ENGINE_UNLOCKED_UNOWNS_X_TO_Z
	iffalse .NoAppear

.Appear:
	appear CERULEAN_CAVE_B1F_MEWTWO
	endcallback

.NoAppear:
	disappear CERULEAN_CAVE_B1F_MEWTWO
	endcallback

CeruleanCaveB1FMewtwo:
	faceplayer
	opentext
	writetext MewtwoText
	cry MEWTWO
	pause 15
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon MEWTWO, 70
	startbattle
	disappear CERULEAN_CAVE_B1F_MEWTWO
	setevent EVENT_FOUGHT_MEWTWO
	reloadmapafterbattle
	end

MewtwoText:
	text "Mew!"
	done

CeruleanCaveB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  7, CERULEAN_CAVE_1F, 8

	def_coord_events

	def_bg_events

	def_object_events
	object_event 28, 15, SPRITE_RHYDON, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, CeruleanCaveB1FMewtwo, EVENT_CERULEAN_CAVE_MEWTWO
