	object_const_def

MineshaftB3F_MapScripts:
	def_scene_scripts

	def_callbacks

MineshaftB3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3, 17, MINESHAFT_B2F, 4
	warp_event 13,  5, MINESHAFT_B2F, 5
	warp_event 29,  9, MINESHAFT_B2F, 6
	warp_event 29, 15, MINESHAFT_B2F, 7
	warp_event  3,  5, MINESHAFT_B4F, 1
	warp_event 11, 15, MINESHAFT_B4F, 2
	
	def_coord_events

	def_bg_events

	def_object_events
