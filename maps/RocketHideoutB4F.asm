	object_const_def

RocketHideoutB4F_MapScripts:
	def_scene_scripts

	def_callbacks

RocketHideoutB4F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 19, 10, ROCKET_HIDEOUT_B3F, 2
	warp_event 24, 15, ROCKET_HIDEOUT_ELEVATOR, 1
	warp_event 25, 15, ROCKET_HIDEOUT_ELEVATOR, 2
	
	def_coord_events

	def_bg_events

	def_object_events
