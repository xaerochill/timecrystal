	object_const_def
	const LAKEPOKECENTER1F_NURSE
	const LAKEPOKECENTER_BUG_CATCHER
	const LAKEPOKECENTER1F_FISHING_GURU

LakeOfRagePokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

LakeOfRagePokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

LakeOfRagePokecenter1FBugcatcherScript:
	jumptextfaceplayer LakeOfRagePokecenter1FBugcatcherText

LakeOfRagePokecenter1FFishingGuruScript:
	jumptextfaceplayer LakeOfRagePokecenter1FFishingGuruText

LakeOfRagePokecenter1FBugcatcherText:
	text "The fishermen"
	line "yelled at me for"
	cont "bugging them…"
	done

LakeOfRagePokecenter1FFishingGuruText:
	text "Fishing is life!"
	line "I'm pretty good at"
	cont "#MON too."
	done

LakeOfRagePokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, LAKE_OF_RAGE, 5
	warp_event  4,  7, LAKE_OF_RAGE, 5
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LakeOfRagePokecenter1FNurseScript, -1
	object_event  9,  6, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LakeOfRagePokecenter1FBugcatcherScript, -1
	object_event  6,  1, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LakeOfRagePokecenter1FFishingGuruScript, -1
	