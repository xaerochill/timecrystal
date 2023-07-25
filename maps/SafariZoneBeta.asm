SafariZoneBeta_MapScripts:
	def_scene_scripts

	def_callbacks

SafariZoneBetaSign:
	jumptext SafariZoneBetaSignText

SafariZoneBetaSignText:
	text "AREA 5: WETLANDS"

	para "Wow!"
	line "Wild SCYTHER"
	line "occupy this"
	cont "new area."
	done

SafariZoneBeta_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 35, 10, SAFARI_ZONE_WEST, 3
	warp_event 35, 11, SAFARI_ZONE_WEST, 4
	
	def_coord_events

	def_bg_events
	bg_event 9, 7, BGEVENT_READ, SafariZoneBetaSign

	def_object_events
