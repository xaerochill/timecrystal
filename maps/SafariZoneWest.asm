SafariZoneWest_MapScripts:
	def_scene_scripts

	def_callbacks

SafariZoneWestHouseSign:
	jumptext SafariZoneWestHouseSignText

SafariZoneWestSign:
	jumptext SafariZoneWestSignText

SafariZoneWestHouseSignText:
	text "REST HOUSE"
	done

SafariZoneWestSignText:
	text "AREA 4: PLAINS"

	para "Attention!"
	line "There are wild"
	cont "TAUROS herds"
	cont "around."
	done

SafariZoneWest_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 29, 10, SAFARI_ZONE_CENTER, 7
	warp_event 29, 11, SAFARI_ZONE_CENTER, 8
	warp_event 10,  0, SAFARI_ZONE_BETA, 1
	warp_event 11,  0, SAFARI_ZONE_BETA, 2
	warp_event 22,  0, SAFARI_ZONE_NORTH, 5
	warp_event 23,  0, SAFARI_ZONE_NORTH, 6
	
	def_coord_events

	def_bg_events
	bg_event 13, 13, BGEVENT_READ, SafariZoneWestHouseSign
	bg_event 15, 3, BGEVENT_READ, SafariZoneWestSign
	
	def_object_events
