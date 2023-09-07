	object_const_def

RocketHideoutB3F_MapScripts:
	def_scene_scripts

	def_callbacks

RocketHideoutB3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 25, 12, ROCKET_HIDEOUT_B2F, 2
	warp_event 19, 24, ROCKET_HIDEOUT_B4F, 1
	warp_event 24, 25, ROCKET_HIDEOUT_ELEVATOR, 1
	warp_event 25, 25, ROCKET_HIDEOUT_ELEVATOR, 2
	warp_event 23,  2, OLIVINE_PORT_PASSAGE, 6

	def_coord_events

	def_bg_events

	def_object_events
