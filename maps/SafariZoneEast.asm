SafariZoneEast_MapScripts:
	def_scene_scripts

	def_callbacks

SafariZoneEastHouseSign:
	jumptext SafariZoneEastHouseSignText

SafariZoneEastSign:
	jumptext SafariZoneEastSignText

SafariZoneEastConstructionSign:
	jumptext SafariZoneEastSignText

SafariZoneEastHouseSignText:
	text "REST HOUSE"
	done

SafariZoneEastSignText:
	text "AREA 2: STEPPE"

	para "Careful!"
	line "One might en-"
	cont "counter wild"
	cont "KANGASKHAN."
	done
	
	SafariZoneEastConstructionSignText:
	text "Currently under"
	line "construction!"
	done

SafariZoneEast_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 0, 22, SAFARI_ZONE_CENTER, 3
	warp_event 0, 23, SAFARI_ZONE_CENTER, 4
	warp_event 0, 4, SAFARI_ZONE_NORTH, 3
	warp_event 0, 5, SAFARI_ZONE_NORTH, 4
	
	def_coord_events

	def_bg_events
	bg_event 26, 10, BGEVENT_READ, SafariZoneEastHouseSign
	bg_event 4, 22, BGEVENT_READ, SafariZoneEastSign
	bg_event 6, 4, BGEVENT_READ, SafariZoneEastConstructionSign
	def_object_events
