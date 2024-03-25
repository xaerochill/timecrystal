	object_const_def

MountMoonB1F_MapScripts:
	def_scene_scripts

	def_callbacks

MountMoonB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  3, MOUNT_MOON_1F, 3
	warp_event  3, 23, MOUNT_MOON_B2F, 1
	warp_event 11, 21, MOUNT_MOON_1F, 4
	warp_event 25, 15, MOUNT_MOON_1F, 5
	warp_event 17, 13, MOUNT_MOON_B2F, 2
	warp_event 19, 21, MOUNT_MOON_B2F, 3
	warp_event 21,  3, MOUNT_MOON_B2F, 4
	warp_event 25,  3, ROUTE_4, 1
	warp_event 11,  5, MOUNT_MOON_SQUARE, 1
	warp_event 11,  3, MOUNT_MOON_B2F, 5
	warp_event 25, 27, POWER_PLANT_B3F, 1
	warp_event  3, 29, MOUNT_MOON_B2F, 6

	def_coord_events

	def_bg_events

	def_object_events
