	object_const_def
	const OLIVINEHOUSEBETA_NERD
	const OLIVINEHOUSEBETA_RHYDON

OlivineHouseBeta_MapScripts:
	def_scene_scripts

	def_callbacks

OlivineHouseBetaNerdScript:
	jumptextfaceplayer OlivineHouseBetaNerdText

OlivineHouseBetaRhydonScript:
	opentext
	writetext OlivineHouseBetaRhydonText
	cry RHYDON
	waitbutton
	closetext
	end

OlivineHouseBetaBookshelf1:
	jumptext OlivineHouseBetaBookshelf1Text

OlivineHouseBetaBookshelf2:
	jumptext OlivineHouseBetaBookshelf2Text

OlivineHouseBetaTV:
	jumptext OlivineHouseBetaTVText

OlivineHouseBetaPoster:
	jumptext OlivineHouseBetaPosterText

OlivineHouseBetaNerdText:
	text "When my #MON"
	line "got sick, the"

	para "PHARMACIST in"
	line "CIANWOOD made some"
	cont "medicine for me."

	para "You should stop"
	line "by WHIRL ISLAND"
	cont "on the way there."

	para "Deep below, you"
	line "will encounter a"
	cont "legendary #MON."

	para "Please do not hurt"
	line "her, we all need"
	cont "to coexist."
	done

OlivineHouseBetaRhydonText:
	text "RHYDON: Gugooh!"
	done

OlivineHouseBetaBookshelf1Text:
	text "There are lots of"
	line "manuscripts here!"

	para "Some seem to be"
	line "for a movie about"
	cont "MEWTWO and MEW."

	para "Lots of others"
	line "are about LUGIA."
	done

OlivineHouseBetaBookshelf2Text:
	text "There is lots of"
	line "litter on here."

	para "Empty bottles and"
	line "packs of medicine."

	para "I hope that guy"
	line "is doing okay..."
	done

OlivineHouseBetaTVText:
	text "There is a DVD in"
	line "the recorder!"

	para "LUGIA'S EXPLOSIVE"
	line "BIRTH. Good stuff!"
	done

OlivineHouseBetaPosterText:
	text "It seems to be a"
	line "poster of PORYGON."

	para "The background"
	line "switches between"
	cont "red and blue!"
	done

OlivineHouseBeta_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, OLIVINE_CITY, 4
	warp_event  3,  7, OLIVINE_CITY, 4

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, OlivineHouseBetaBookshelf1
	bg_event  1,  1, BGEVENT_READ, OlivineHouseBetaBookshelf2
	bg_event  2,  1, BGEVENT_READ, OlivineHouseBetaTV
	bg_event  3,  0, BGEVENT_READ, OlivineHouseBetaPoster

	def_object_events
	object_event  2,  3, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineHouseBetaNerdScript, -1
	object_event  6,  4, SPRITE_RHYDON, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineHouseBetaRhydonScript, -1
