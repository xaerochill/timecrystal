	object_const_def

SilphCo9F_MapScripts:
	def_scene_scripts

	def_callbacks

SilphCo9F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 21,  0, SILPH_CO_10F, 1
	warp_event 19,  0, SILPH_CO_8F, 1
	warp_event 17,  0, SILPH_CO_ELEVATOR, 1
	warp_event  9,  3, SILPH_CO_3F, 8
	warp_event 17, 15, SILPH_CO_5F, 5

	def_coord_events

	def_bg_events

	def_object_events
