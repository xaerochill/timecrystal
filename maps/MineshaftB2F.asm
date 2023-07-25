	object_const_def

MineshaftB2F_MapScripts:
	def_scene_scripts

	def_callbacks

MineshaftB2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  1,  1, MINESHAFT_B1F, 4
	warp_event  9,  1, MINESHAFT_B1F, 5
	warp_event 29,  5, MINESHAFT_B1F, 6
	warp_event  3, 17, MINESHAFT_B3F, 1
	warp_event 13,  5, MINESHAFT_B3F, 2
	warp_event 29,  9, MINESHAFT_B3F, 3
	warp_event 29, 15, MINESHAFT_B3F, 4

	def_coord_events

	def_bg_events

	def_object_events
