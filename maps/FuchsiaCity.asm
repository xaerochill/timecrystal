	object_const_def
	const FUCHSIACITY_YOUNGSTER
	const FUCHSIACITY_POKEFAN_M
	const FUCHSIACITY_TEACHER
	const FUCHSIACITY_FRUIT_TREE
	const FUCHSIACITY_OMANYTE
	const FUCHSIACITY_KABUTO
	const FUCHSIACITY_KANGASKHAN
	const FUCHSIACITY_VOLTORB
	const FUCHSIACITY_CHANSEY
	const FUCHSIACITY_SLOWPOKE
	const FUCHSIACITY_LAPRAS

FuchsiaCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, FuchsiaCityFlypointCallback

FuchsiaCityFlypointCallback:
	setflag ENGINE_FLYPOINT_FUCHSIA
	endcallback

FuchsiaCityYoungster:
	jumptextfaceplayer FuchsiaCityYoungsterText

FuchsiaCityPokefanM:
	jumptextfaceplayer FuchsiaCityPokefanMText

FuchsiaCityTeacher:
	jumptextfaceplayer FuchsiaCityTeacherText

FuchsiaCitySign:
	jumptext FuchsiaCitySignText

FuchsiaGymSign:
	jumptext FuchsiaGymSignText

SafariZoneOfficeSign:
	jumptext SafariZoneOfficeSignText

WardensHomeSign:
	jumptext WardensHomeSignText

SafariZoneSign:
	jumptext SafariZoneSignText

FuchsiaCityPokecenterSign:
	jumpstd PokecenterSignScript

FuchsiaCityMartSign:
	jumpstd MartSignScript

FuchsiaCityOmanyteSign:
	jumptext FuchsiaCityOmanyteSignText
	
FuchsiaCityKabutoSign:
	jumptext FuchsiaCityKabutoSignText

FuchsiaCityKangaskhanSign:
	jumptext FuchsiaCityKangaskhanSignText

FuchsiaCityVoltorbSign:
	jumptext FuchsiaCityVoltorbSignText

FuchsiaCityChanseySign:
	jumptext FuchsiaCityChanseySignText

FuchsiaCitySlowpokeSign:
	jumptext FuchsiaCitySlowpokeSignText

FuchsiaCityLaprasSign:
	jumptext FuchsiaCityLaprasSignText

FuchsiaCityOmanyte:
	cry OMANYTE
	
FuchsiaCityKabuto:
	cry KABUTO

FuchsiaCityKangaskhan:
	cry KANGASKHAN

FuchsiaCityVoltorb:
	cry VOLTORB

FuchsiaCityChansey:
	cry CHANSEY

FuchsiaCitySlowpoke:
	cry SLOWPOKE

FuchsiaCityLapras:
	cry LAPRAS
	
FuchsiaCityFruitTree:
	fruittree FRUITTREE_FUCHSIA_CITY

FuchsiaCityYoungsterText:
	text "One of the ELITE"
	line "FOUR used to be"

	para "the LEADER of"
	line "FUCHSIA's GYM."
	done

FuchsiaCityPokefanMText:
	text "KOGA's daughter"
	line "succeeded him as"

	para "the GYM LEADER"
	line "after he joined"
	cont "the ELITE FOUR."
	done

FuchsiaCityTeacherText:
	text "The SAFARI ZONE is"
	line "not that popular"
	cont "right now due to"
	cont "those nasty"
	cont "rumours..."
	
	para "It's sad,"
	line "considering it's"
	cont "FUCHSIA's main"
	cont "attraction."
	done

FuchsiaCitySignText:
	text "FUCHSIA CITY"

	para "Behold! It's"
	line "Passion Pink!"
	done

FuchsiaGymSignText:
	text "FUCHSIA CITY"
	line "#MON GYM"
	cont "LEADER: JANINE"

	para "The Poisonous"
	line "Ninja Master"
	done

SafariZoneOfficeSignText:
	text "#MON PARADISE"
	line "SAFARI ZONE"
	done

WardensHomeSignText:
	text "SAFARI ZONE"
	line "WARDEN'S HOME"
	done

SafariZoneSignText:
	text "SAFARI GAME"
	line "#MON-U-CATCH!"
	done

FuchsiaCityChanseySignText:
	text "Name: CHANSEY"

	para "Catching one is"
	line "all up to chance."
	done

FuchsiaCityVoltorbSignText:
	text "Name: VOLTORB"

	para "The very image of"
	line "a # BALL."
	done

FuchsiaCityKangaskhanSignText:
	text "Name: KANGASKHAN"

	para "A maternal #MON"
	line "that raises its"
	cont "young in a pouch"
	cont "on its belly."
	done

FuchsiaCitySlowpokeSignText:
	text "Name: SLOWPOKE"

	para "Friendly and very"
	line "slow moving."
	done

FuchsiaCityLaprasSignText:
	text "Name: LAPRAS"

	para "A.K.A. the king"
	line "of the seas."
	done

FuchsiaCityOmanyteSignText:
	text "Name: OMANYTE"

	para "A #MON that"
	line "was resurrected"
	cont "from a fossil."
	done

FuchsiaCityKabutoSignText:
	text "Name: KABUTO"

	para "A #MON that"
	line "was resurrected"
	cont "from a fossil."
	done

FuchsiaCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 13, FUCHSIA_MART, 2
	warp_event 22, 13, SAFARI_ZONE_MAIN_OFFICE, 1
	warp_event  8, 27, FUCHSIA_GYM, 1
	warp_event 11, 27, BILLS_BROTHERS_HOUSE, 1
	warp_event 19, 27, FUCHSIA_POKECENTER_1F, 1
	warp_event 27, 27, SAFARI_ZONE_WARDENS_HOME, 1
	warp_event 18,  3, SAFARI_ZONE_FUCHSIA_GATE, 3
	warp_event 37, 22, ROUTE_15_FUCHSIA_GATE, 1
	warp_event 37, 23, ROUTE_15_FUCHSIA_GATE, 2
	warp_event  7, 35, ROUTE_19_FUCHSIA_GATE, 1
	warp_event  8, 35, ROUTE_19_FUCHSIA_GATE, 2

	def_coord_events

	def_bg_events
	bg_event 21, 15, BGEVENT_READ, FuchsiaCitySign
	bg_event 5, 29, BGEVENT_READ, FuchsiaGymSign
	bg_event 25, 15, BGEVENT_READ, SafariZoneOfficeSign
	bg_event 27, 29, BGEVENT_READ, WardensHomeSign
	bg_event 17,  5, BGEVENT_READ, SafariZoneSign
	bg_event 20, 27, BGEVENT_READ, FuchsiaCityPokecenterSign
	bg_event 6, 13, BGEVENT_READ, FuchsiaCityMartSign
	bg_event 5, 7, BGEVENT_READ, FuchsiaCityOmanyteSign
	bg_event 7, 7, BGEVENT_READ, FuchsiaCityKabutoSign
	bg_event 13, 7, BGEVENT_READ, FuchsiaCityKangaskhanSign
	bg_event 27, 7, BGEVENT_READ, FuchsiaCityVoltorbSign
	bg_event 33, 7, BGEVENT_READ, FuchsiaCityChanseySign
	bg_event 31, 13, BGEVENT_READ, FuchsiaCitySlowpokeSign
	bg_event 13, 15, BGEVENT_READ, FuchsiaCityLaprasSign

	def_object_events
	object_event 23, 18, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, FuchsiaCityYoungster, -1
	object_event 11,  9, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, FuchsiaCityPokefanM, -1
	object_event 16, 14, SPRITE_TEACHER_F, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, FuchsiaCityTeacher, -1
	object_event  8,  1, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaCityFruitTree, -1
	object_event  5, 5, SPRITE_SHELLDER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, FuchsiaCityOmanyte, -1
	object_event  7, 5, SPRITE_SHELLDER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, FuchsiaCityKabuto, -1
	object_event  12, 6, SPRITE_RHYDON, SPRITEMOVEDATA_STILL, 1, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, FuchsiaCityKangaskhan, -1
	object_event  25, 6, SPRITE_VOLTORB, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, FuchsiaCityVoltorb, -1
	object_event  31, 5, SPRITE_CLEFAIRY, SPRITEMOVEDATA_STILL, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, FuchsiaCityChansey, -1
	object_event  30, 12, SPRITE_SLOWPOKE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, FuchsiaCitySlowpoke, -1
	object_event  8, 17, SPRITE_LAPRAS, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, FuchsiaCityLapras, -1
