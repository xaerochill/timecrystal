	object_const_def

SafariZoneHideout1F_MapScripts:
	def_scene_scripts

	def_callbacks

SafariZoneHideout1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 26, SAFARI_ZONE_WEST, 7
	warp_event  5, 26, SAFARI_ZONE_WEST, 7
	warp_event  23, 24, SAFARI_ZONE_HIDEOUT_2F, 1
	warp_event  27, 24, SAFARI_ZONE_HIDEOUT_B1F, 1

	def_coord_events

	def_bg_events

	def_object_events
	