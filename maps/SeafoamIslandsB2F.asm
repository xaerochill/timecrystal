	object_const_def

SeafoamIslandsB2F_MapScripts:
	def_scene_scripts

	def_callbacks

SeafoamIslandsB2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  3, SEAFOAM_ISLANDS_B1F, 1
	warp_event  5, 13, SEAFOAM_ISLANDS_B3F, 1
	warp_event 13,  7, SEAFOAM_ISLANDS_B1F, 3
	warp_event 17, 15, SEAFOAM_ISLANDS_B1F, 4
	warp_event 25,  5, SEAFOAM_ISLANDS_B3F, 4
	warp_event 23, 13, SEAFOAM_ISLANDS_B1F, 6
	warp_event 25, 13, SEAFOAM_ISLANDS_B3F, 5

	def_coord_events

	def_bg_events

	def_object_events
