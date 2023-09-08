	object_const_def
	const LAKEMART_CLERK
	const LAKEMART_FISHER

LakeOfRageMart_MapScripts:
	def_scene_scripts

	def_callbacks

LakeOfRageMartClerkScript:
	opentext
	pokemart MARTTYPE_SHADY, MART_LAKE_OF_RAGE
	closetext
	end

LakeOfRageMartFisherScript:
	jumptextfaceplayer LakeOfRageMartFisherText

LakeOfRageMartFisherText:
	text "I visited a"
	line "similar shop once."

	para "It was when I"
	line "travelled to"
	line "CINNABAR ISLAND"
	cont "to go fishing."
	done

LakeOfRageMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, LAKE_OF_RAGE, 4
	warp_event  3,  7, LAKE_OF_RAGE, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LakeOfRageMartClerkScript, -1
	object_event  3,  3, SPRITE_FISHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, LakeOfRageMartFisherScript, -1
