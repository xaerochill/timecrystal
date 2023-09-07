	object_const_def

RocketHideoutB2F_MapScripts:
	def_scene_scripts

	def_callbacks

RocketHideoutB2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 27, 12, ROCKET_HIDEOUT_B1F, 1
	warp_event 21, 12, ROCKET_HIDEOUT_B3F, 1
	warp_event 24, 23, ROCKET_HIDEOUT_ELEVATOR, 1
	warp_event 21, 26, ROCKET_HIDEOUT_B1F, 4
	warp_event 25, 23, ROCKET_HIDEOUT_ELEVATOR, 2
	warp_event  7,  2, VERMILION_PORT_PASSAGE, 5

	def_coord_events

	def_bg_events

	def_object_events
