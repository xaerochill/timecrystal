SafariZoneCenter_MapScripts:
	def_scene_scripts

	def_callbacks

SafariZoneCenterHouseSign:
	jumptext SafariZoneCenterHouseSignText

SafariZoneCenterSign:
	jumptext SafariZoneCenterSignText

SafariZoneCenterConstructionSign:
	jumptext SafariZoneCenterConstructionSignText

SafariZoneCenterHouseSignText:
	text "REST HOUSE"
	done

SafariZoneCenterSignText:
	text "AREA 1: PARK"

	para "Welcome!"
	line "You may find"
	cont "CHANSEY here if"
	cont "you are lucky."
	done

SafariZoneCenterConstructionSignText:
	text "Currently under"
	line "construction!"
	done

SafariZoneCenter_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 14, 25, SAFARI_ZONE_FUCHSIA_GATE, 1
	warp_event 15, 25, SAFARI_ZONE_FUCHSIA_GATE, 2
	warp_event 29, 10, SAFARI_ZONE_EAST, 1
	warp_event 29, 11, SAFARI_ZONE_EAST, 2
	warp_event 14, 0, SAFARI_ZONE_NORTH, 1
	warp_event 15, 0, SAFARI_ZONE_NORTH, 2
	warp_event 0, 10, SAFARI_ZONE_WEST, 1
	warp_event 0, 11, SAFARI_ZONE_WEST, 2

	def_coord_events

	def_bg_events
	bg_event 33, 3, BGEVENT_READ, SafariZoneCenterHouseSign
	bg_event 17, 19, BGEVENT_READ, SafariZoneCenterSign
	bg_event 19, 3, BGEVENT_READ, SafariZoneCenterConstructionSign
	def_object_events
