	object_const_def

MineshaftB1F_MapScripts:
	def_scene_scripts

	def_callbacks

MineshaftB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 15,  1, MINESHAFT_1F, 2
	warp_event 29,  3, MINESHAFT_1F, 3
	warp_event 29, 15, MINESHAFT_1F, 4
	warp_event  1,  1, MINESHAFT_B2F, 1
	warp_event  9,  1, MINESHAFT_B2F, 2
	warp_event 29,  5, MINESHAFT_B2F, 3

	def_coord_events

	def_bg_events

	def_object_events
