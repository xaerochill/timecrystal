	object_const_def

SilphCo8F_MapScripts:
	def_scene_scripts

	def_callbacks

SilphCo8F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 19,  0, SILPH_CO_9F, 2
	warp_event 21,  0, SILPH_CO_7F, 1
	warp_event 17,  0, SILPH_CO_ELEVATOR, 1
	warp_event  3, 11, SILPH_CO_8F, 7
	warp_event  3, 15, SILPH_CO_2F, 5
	warp_event 11,  5, SILPH_CO_2F, 6
	warp_event 11,  9, SILPH_CO_8F, 4

	def_coord_events

	def_bg_events

	def_object_events
