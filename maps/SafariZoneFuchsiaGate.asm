	object_const_def
	const SAFARIZONEFUCHSIAGATE_OFFICER

SafariZoneFuchsiaGate_MapScripts:
	def_scene_scripts

	def_callbacks

SafariZoneFuchsiaGateOfficerScript:
	jumptextfaceplayer SafariZoneFuchsiaGateOfficerText

SafariZoneFuchsiaGateOfficerText:
	text "Welcome to the"
	line "SAFARI ZONE!"
	cont "We had a rich"
	cont "investor put"
	cont "lots of money"
	cont "into it..."

	para "So entry is"
	line "free of charge"
	cont "and there are 5"
	cont "zones now."

	para "Each zone has"
	line "different kinds"
	cont "of #MON. Use"
	cont "any ball to"
	cont "catch them!"
	done

SafariZoneFuchsiaGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  0, SAFARI_ZONE_CENTER, 1
	warp_event  5,  0, SAFARI_ZONE_CENTER, 2
	warp_event  4,  7, FUCHSIA_CITY, 7
	warp_event  5,  7, FUCHSIA_CITY, 7

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SafariZoneFuchsiaGateOfficerScript, -1
