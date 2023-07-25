	object_const_def

SeafoamIslands1F_MapScripts:
	def_scene_scripts

	def_callbacks

SeafoamIslands1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 15, ROUTE_20, 1
	warp_event 26, 15, ROUTE_20, 2
	warp_event  7,  7, SEAFOAM_ISLANDS_B1F, 2
	warp_event 25,  3, SEAFOAM_ISLANDS_B1F, 7
	warp_event 23, 15, SEAFOAM_ISLANDS_B1F, 5

	def_coord_events

	def_bg_events

	def_object_events
