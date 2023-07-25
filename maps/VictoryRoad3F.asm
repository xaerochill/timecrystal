	object_const_def
	const VICTORYROAD_POKE_BALL2
	const VICTORYROAD_POKE_BALL4
	const VICTORYROAD_POKE_BALL5

VictoryRoad3F_MapScripts:
	def_scene_scripts

	def_callbacks

VictoryRoadMaxRevive:
	itemball MAX_REVIVE

VictoryRoadFullHeal:
	itemball FULL_HEAL

VictoryRoadHPUp:
	itemball HP_UP

VictoryRoad3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 25,  9, VICTORY_ROAD_2F, 3
	warp_event 29, 11, VICTORY_ROAD_2F, 5
	warp_event 29, 17, VICTORY_ROAD_2F, 4
	warp_event  5,  3, VICTORY_ROAD_2F, 6
	warp_event 24, 17, VICTORY_ROAD_2F, 7

	def_coord_events

	def_bg_events

	def_object_events
	object_event 16, 48, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoadMaxRevive, EVENT_VICTORY_ROAD_MAX_REVIVE
	object_event 19, 48, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoadFullHeal, EVENT_VICTORY_ROAD_FULL_HEAL
	object_event 11, 38, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoadHPUp, EVENT_VICTORY_ROAD_HP_UP
