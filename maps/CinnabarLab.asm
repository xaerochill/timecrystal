	object_const_def

CinnabarLab_MapScripts:
	def_scene_scripts

	def_callbacks

CinnabarLabPhoto:
	jumptext CinnabarLabPhotoText

CinnabarLabConferenceSign:
	jumptext CinnabarLabConferenceSignText

CinnabarLabResearchSign:
	jumptext CinnabarLabResearchSignText

CinnabarLabFossilSign:
	jumptext CinnabarLabFossilSignText

CinnabarLabPhotoText:
	text "A photo of the"
	line "LAB's founder,"
	cont "DR. FUJI!"
	done

CinnabarLabConferenceSignText:
	text "#MON LAB"
	line "Meeting Room"
	done

CinnabarLabResearchSignText:
	text "#MON LAB"
	line "R&D Room"
	done

CinnabarLabFossilSignText:
	text "#MON LAB"
	line "Testing Room"
	done

CinnabarLab_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CINNABAR_ISLAND, 4
	warp_event  3,  7, CINNABAR_ISLAND, 4
	warp_event  8,  4, CINNABAR_LAB_CONFERENCE_ROOM, 1
	warp_event 12,  4, CINNABAR_LAB_RESEARCH_ROOM, 1
	warp_event 16,  4, CINNABAR_LAB_FOSSIL_ROOM, 1
	
	def_coord_events

	def_bg_events
	bg_event  4,  0, BGEVENT_READ, CinnabarLabPhoto
	bg_event  9,  4, BGEVENT_READ, CinnabarLabConferenceSign
	bg_event 13,  4, BGEVENT_READ, CinnabarLabResearchSign
	bg_event 17,  4, BGEVENT_READ, CinnabarLabFossilSign

	def_object_events
