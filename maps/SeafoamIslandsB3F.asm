	object_const_def

SeafoamIslandsB3F_MapScripts:
	def_scene_scripts

	def_callbacks

SeafoamIslandsB3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 11, SEAFOAM_ISLANDS_B2F, 2
	warp_event  9,  7, SEAFOAM_ISLANDS_B4F, 3
	warp_event 23,  3, SEAFOAM_ISLANDS_B4F, 4
	warp_event 27,  3, SEAFOAM_ISLANDS_B2F, 5
	warp_event 25, 13, SEAFOAM_ISLANDS_B2F, 7
	warp_event 20, 17, SEAFOAM_ISLANDS_B4F, 1
	warp_event 21, 17, SEAFOAM_ISLANDS_B4F, 2

	def_coord_events

	def_bg_events

	def_object_events
