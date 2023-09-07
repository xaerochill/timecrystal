Route7_MapScripts:
	def_scene_scripts

	def_callbacks

Route7UndergroundPathSign:
	jumptext Route7UndergroundPathSignText

Route7UndergroundPathSignText:
	text "What's this flyer?"

	para "… Uncouth trainers"
	line "have been holding"

	para "battles in the"
	line "UNDERGROUND PATH."

	para "We ask you to"
	line "proceed with"
	cont "extreme caution"
	cont "or avoid the"
	cont "UNDERGROUND PATH"
	cont "altogether."

	para "CELADON POLICE"
	done

Route7_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 15,  6, ROUTE_7_SAFFRON_GATE, 1
	warp_event 15,  7, ROUTE_7_SAFFRON_GATE, 2
	warp_event  6,  9, VERMILION_PORT_PASSAGE, 7

	def_coord_events

	def_bg_events
	bg_event  5, 11, BGEVENT_READ, Route7UndergroundPathSign

	def_object_events
