	object_const_def

ViridianForest_MapScripts:
	def_scene_scripts

	def_callbacks

	ViridianForestSign1:
	jumptext ViridianForestSign1Text
	
	ViridianForestSign2:
	jumptext ViridianForestSign2Text
	
	ViridianForestSign3:
	jumptext ViridianForestSign3Text
	
	ViridianForestSign4:
	jumptext ViridianForestSign4Text
	
	ViridianForestSign5:
	jumptext ViridianForestSign5Text

	ViridianForestSign1Text:
	text "TRAINER TIPS"

	para "Weaken #MON"
	line "before attempting"
	cont "capture!"

	para "When healthy,"
	line "they may escape!"
	done

	ViridianForestSign2Text:
	text "For poison, use"
	line "ANTIDOTE! Get it"
	cont "at #MON MARTs!"
	done

	ViridianForestSign3Text:
	text "TRAINER TIPS"

	para "No stealing of"
	line "#MON from"
	cont "other trainers!"
	cont "Catch only wild"
	cont "#MON!"
	done

	ViridianForestSign4Text:
	text "TRAINER TIPS"

	para "Contact PROF.OAK"
	line "via PC to get"
	cont "your #DEX"
	cont "evaluated!"
	done

	ViridianForestSign5Text:
	text "Now eaving"
	line "VIRIDIAN FOREST."
	cont "PEWTER CITY"
	cont "lies ahead!"
	done

ViridianForest_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 16, 47, ROUTE_2, 6
	warp_event 17, 47, ROUTE_2, 6
	warp_event  1,  0,  ROUTE_2, 7
	warp_event  2,  0,  ROUTE_2, 8

	def_coord_events

	def_bg_events
	bg_event 17, 45, BGEVENT_READ, ViridianForestSign1
	bg_event 17, 33, BGEVENT_READ, ViridianForestSign2
	bg_event 5,  25, BGEVENT_READ, ViridianForestSign3
	bg_event 26, 17, BGEVENT_READ, ViridianForestSign4
	bg_event  2,  3,  BGEVENT_READ, ViridianForestSign5

	def_object_events

