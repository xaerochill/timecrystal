	object_const_def

Mineshaft1F_MapScripts:
	def_scene_scripts

	def_callbacks

Mineshaft1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  1, ROUTE_3, 2
	warp_event 15,  1, MINESHAFT_B1F, 1
	warp_event 29,  3, MINESHAFT_B1F, 2
	warp_event 29, 15, MINESHAFT_B1F, 3
	
	def_coord_events

	def_bg_events

	def_object_events
