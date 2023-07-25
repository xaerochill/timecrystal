	object_const_def

SilphCo3F_MapScripts:
	def_scene_scripts

	def_callbacks

SilphCo3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 25,  0, SILPH_CO_2F, 2
	warp_event 27,  0, SILPH_CO_4F, 1
	warp_event 23,  0, SILPH_CO_ELEVATOR, 1
	warp_event 23, 11, SILPH_CO_3F, 10
	warp_event  3,  3, SILPH_CO_5F, 6
	warp_event  3, 15, SILPH_CO_5F, 7
	warp_event 27,  3, SILPH_CO_2F, 4
	warp_event  3, 11, SILPH_CO_9F, 4
	warp_event 11, 11, SILPH_CO_7F, 5
	warp_event 27, 15, SILPH_CO_3F, 4

	def_coord_events

	def_bg_events

	def_object_events
