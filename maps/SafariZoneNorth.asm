SafariZoneNorth_MapScripts:
	def_scene_scripts

	def_callbacks

SafariZoneNorthHouseSign:
	jumptext SafariZoneNorthHouseSignText

SafariZoneNorthSign:
	jumptext SafariZoneNorthSignText

SafariZoneNorthConstructionSign:
	jumptext SafariZoneNorthConstructionSignText

SafariZoneNorthHouseSignText:
	text "REST HOUSE"
	done

SafariZoneNorthSignText:
	text "AREA 3: FOREST"

	para "Beware!"
	line "Wild PINSIR"
	line "roam this un-"
	cont "kempt forest."
	done

	SafariZoneNorthConstructionSignText:
	text "Currently under"
	line "construction!"
	done
	
SafariZoneNorth_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 24, 35, SAFARI_ZONE_CENTER, 5
	warp_event 25, 35, SAFARI_ZONE_CENTER, 6
	warp_event 39, 28, SAFARI_ZONE_EAST, 2
	warp_event 39, 29, SAFARI_ZONE_EAST, 3
	warp_event 2, 35, SAFARI_ZONE_WEST, 5
	warp_event 3, 35, SAFARI_ZONE_WEST, 6
	warp_event 17, 17, SAFARI_ZONE_HIDEOUT_1F, 1

	def_coord_events

	def_bg_events
	bg_event 33, 3, BGEVENT_READ, SafariZoneNorthHouseSign
	bg_event 15, 31, BGEVENT_READ, SafariZoneNorthSign
	bg_event 3, 27, BGEVENT_READ, SafariZoneNorthConstructionSign
	
	def_object_events
