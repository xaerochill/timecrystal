	object_const_def
	const CINNABARMART_CLERK
	const CINNABARMART_FISHER

CinnabarMart_MapScripts:
	def_scene_scripts

	def_callbacks

CinnabarMartClerkScript:
	opentext
	pokemart MARTTYPE_SHADY, MART_CINNABAR
	closetext
	end

CinnabarMartFisherScript:
	jumptextfaceplayer CinnabarMartFisherText

CinnabarMartFisherText:
	text "I visited a"
	line "similar shop once."

	para "It was when I"
	line "travelled to"
	line "LAKE OF RAGE"
	cont "to go fishing."
	done

CinnabarMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CINNABAR_ISLAND, 6
	warp_event  3,  7, CINNABAR_ISLAND, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarMartClerkScript, -1
	object_event  6,  6, SPRITE_FISHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CinnabarMartFisherScript, -1
