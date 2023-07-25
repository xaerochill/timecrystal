	object_const_def
	const POWER_PLANT_B3F_ZAPDOS

PowerPlantB3F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, PowerPlantB3FZapdosCallback

PowerPlantB3FZapdosCallback:
	checkevent EVENT_FOUGHT_ZAPDOS
	iftrue .NoAppear
	checkevent ENGINE_UNLOCKED_UNOWNS_A_TO_K
	iftrue .NoAppear

.Appear:
	appear POWER_PLANT_B3F_ZAPDOS
	endcallback

.NoAppear:
	disappear POWER_PLANT_B3F_ZAPDOS
	endcallback

PowerPlantB3FZapdos:
	faceplayer
	opentext
	writetext ZapdosText
	cry ZAPDOS
	pause 15
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon ZAPDOS, 50
	startbattle
	disappear POWER_PLANT_B3F_ZAPDOS
	setevent EVENT_FOUGHT_ZAPDOS
	reloadmapafterbattle
	end

ZapdosText:
	text "Gyaoo!"
	done

PowerPlantB3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0, 10, ROUTE_10_NORTH, 2
	warp_event  0, 11, ROUTE_10_NORTH, 2
	warp_event  3, 32, POWER_PLANT_B2F, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  9, SPRITE_MOLTRES, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, PowerPlantB3FZapdos, EVENT_POWER_PLANT_ZAPDOS
	