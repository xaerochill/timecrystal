	object_const_def
	const OLIVINEPORTPASSAGE_POKEFAN_M

OlivinePortPassage_MapScripts:
	def_scene_scripts

	def_callbacks

OlivinePortPassagePokefanMScript:
	jumptextfaceplayer OlivinePortPassagePokefanMText

OlivinePortPassagePokefanMText:
	text "FAST SHIP S.S.AQUA"
	line "sails to KANTO on"

	para "Mondays and Fri-"
	line "days."
	done

OlivinePortPassage_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 15,  0, OLIVINE_CITY, 10
	warp_event 16,  0, OLIVINE_CITY, 11
	warp_event 15,  4, OLIVINE_PORT_PASSAGE, 4
	warp_event  3,  2, OLIVINE_PORT_PASSAGE, 3
	warp_event  3, 14, OLIVINE_PORT, 1
	warp_event 15, 14, ROCKET_HIDEOUT_B3F, 5
	warp_event 16, 16, ROUTE_8, 3
	warp_event 17, 16, ROUTE_8, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event 17,  1, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivinePortPassagePokefanMScript, EVENT_OLIVINE_PORT_PASSAGE_POKEFAN_M
