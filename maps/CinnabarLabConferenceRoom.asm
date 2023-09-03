	object_const_def
	const CINNABAR_LAB_CONFERENCE_NERD
	
CinnabarLabConferenceRoom_MapScripts:
	def_scene_scripts

	def_callbacks

Trader:
	faceplayer
	opentext
	special Tradeback
	waitbutton
	closetext
	end

CinnabarLabConferenceRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 8, 7, CINNABAR_LAB, 3
	warp_event 9, 7, CINNABAR_LAB, 3
	
	def_coord_events

	def_bg_events

	def_object_events
	object_event 10,  3, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Trader, -1
