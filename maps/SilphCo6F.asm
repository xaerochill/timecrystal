	object_const_def

SilphCo6F_MapScripts:
	def_scene_scripts

	def_callbacks

SilphCo6F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 19,  0, SILPH_CO_7F, 2
	warp_event 21,  0, SILPH_CO_5F, 1
	warp_event 17,  0, SILPH_CO_ELEVATOR, 1
	warp_event  3,  3, SILPH_CO_4F, 5
	warp_event 23,  3, SILPH_CO_2F, 7

	def_coord_events

	def_bg_events

	def_object_events
