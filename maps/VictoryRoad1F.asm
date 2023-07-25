	object_const_def
	const VICTORYROAD_POKE_BALL1
	const VICTORYROAD_POKE_BALL3

VictoryRoad1F_MapScripts:
	def_scene_scripts

	def_callbacks

VictoryRoadTMEarthquake:
	itemball TM_EARTHQUAKE

VictoryRoadFullRestore:
	itemball FULL_RESTORE

VictoryRoad1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11, 19, VICTORY_ROAD_GATE, 5
	warp_event  5,  5, VICTORY_ROAD_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event 13,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoadTMEarthquake, EVENT_VICTORY_ROAD_TM_EARTHQUAKE
	object_event 11,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoadFullRestore, EVENT_VICTORY_ROAD_FULL_RESTORE
