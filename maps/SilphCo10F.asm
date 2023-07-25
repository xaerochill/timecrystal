	object_const_def

SilphCo10F_MapScripts:
	def_scene_scripts

	def_callbacks

SilphCo10F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13,  0, SILPH_CO_9F, 1
	warp_event 11,  0, SILPH_CO_11F, 1
	warp_event  9,  0, SILPH_CO_ELEVATOR, 1
	warp_event  9, 11, SILPH_CO_4F, 4
	warp_event 13, 15, SILPH_CO_4F, 6
	warp_event 13,  7, SILPH_CO_4F, 7

	def_coord_events

	def_bg_events

	def_object_events
