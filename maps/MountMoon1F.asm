	object_const_def

MountMoon1F_MapScripts:
	def_scene_scripts

	def_callbacks

MtMoonSign:
	jumptext MtMoonSignText

MtMoonSignText:
	text "Beware! ZUBAT is"
	line "a blood sucker!"
	done

MountMoon1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 15, 33, ROUTE_3, 1
	warp_event  5,  5, MOUNT_MOON_B1F, 1
	warp_event 17, 11, MOUNT_MOON_B1F, 3
	warp_event 25, 15, MOUNT_MOON_B1F, 4

	def_coord_events

	def_bg_events
	bg_event 15, 23, BGEVENT_READ, MtMoonSign

	def_object_events
