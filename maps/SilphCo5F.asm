	object_const_def

SilphCo5F_MapScripts:
	def_scene_scripts

	def_callbacks

SilphCo5F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 27,  0, SILPH_CO_6F, 2
	warp_event 25,  0, SILPH_CO_4F, 2
	warp_event 23,  0, SILPH_CO_ELEVATOR, 1
	warp_event 27,  3, SILPH_CO_7F, 6
	warp_event  9, 15, SILPH_CO_9F, 5
	warp_event 11,  5, SILPH_CO_3F, 5
	warp_event  3, 15, SILPH_CO_3F, 6

	def_coord_events

	def_bg_events

	def_object_events
