	object_const_def

KantoRadioTower5F_MapScripts:
	def_scene_scripts

	def_callbacks

KantoRadioTower5FReferenceLibrary:
	jumptext KantoRadioTower5FReferenceLibraryText

KantoRadioTower5FReferenceLibraryText:
	text "Wow! A full rack"
	line "of #MON CDs and"
	cont "videos."

	para "This must be the"
	line "reference library."
	done

KantoRadioTower5F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  0, KANTO_RADIO_TOWER_4F, 1

	def_coord_events

	def_bg_events
	bg_event  8, 13, BGEVENT_READ, KantoRadioTower5FReferenceLibrary
	bg_event  9, 13, BGEVENT_READ, KantoRadioTower5FReferenceLibrary
	bg_event  8,  9, BGEVENT_READ, KantoRadioTower5FReferenceLibrary
	bg_event  9,  9, BGEVENT_READ, KantoRadioTower5FReferenceLibrary
	bg_event  8,  5, BGEVENT_READ, KantoRadioTower5FReferenceLibrary
	bg_event  9,  5, BGEVENT_READ, KantoRadioTower5FReferenceLibrary
	bg_event  6,  1, BGEVENT_READ, KantoRadioTower5FReferenceLibrary
	bg_event  7,  1, BGEVENT_READ, KantoRadioTower5FReferenceLibrary
	bg_event  8,  1, BGEVENT_READ, KantoRadioTower5FReferenceLibrary
	bg_event  9,  1, BGEVENT_READ, KantoRadioTower5FReferenceLibrary

	def_object_events
