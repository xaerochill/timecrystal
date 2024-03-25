	object_const_def
	const MOUNTMOON_RIVAL

MountMoonB2F_MapScripts:
	def_scene_scripts
	scene_script MountMoonNoop1Scene, SCENE_MOUNTMOON_RIVAL_BATTLE
	scene_script MountMoonNoop2Scene, SCENE_MOUNTMOON_NOOP

	def_callbacks
	callback MAPCALLBACK_OBJECTS, MountMoonRivalCallback

MountMoonRivalCallback:
	disappear MOUNTMOON_RIVAL
	endcallback

MountMoonNoop1Scene:
	end

MountMoonNoop2Scene:
	end

MountMoonRivalFight:
	turnobject PLAYER, DOWN
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	appear MOUNTMOON_RIVAL
	applymovement MOUNTMOON_RIVAL, MountMoonRivalMovementBefore
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext MountMoonRivalTextBefore
	waitbutton
	closetext
	winlosstext MountMoonRivalTextWin, MountMoonRivalTextLoss
	setlasttalked MOUNTMOON_RIVAL
	loadtrainer RIVAL1, SILVER1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .FinishBattle

.FinishBattle:
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext MountMoonRivalTextAfter
	waitbutton
	closetext
	applymovement MOUNTMOON_RIVAL, MountMoonRivalMovementAfter
	disappear MOUNTMOON_RIVAL
	setscene SCENE_MOUNTMOON_NOOP
	setevent EVENT_BEAT_RIVAL_IN_MT_MOON
	playmapmusic
	end

MountMoonRivalMovementBefore:
	step LEFT
	step UP
	step_end

MountMoonRivalMovementAfter:
	step DOWN
	step RIGHT
	step_end

MountMoonRivalTextBefore:
	text "<……> <……> <……>"

	para "It's been a while,"
	line "<PLAYER>."

	para "…Since I lost to"
	line "you, I thought"

	para "about what I was"
	line "lacking with my"
	cont "#MON…"

	para "And we came up"
	line "with an answer."

	para "<PLAYER>, now we'll"
	line "show you!"
	done

MountMoonRivalTextWin:
	text "<……> <……> <……>"

	para "I thought I raised"
	line "my #MON to be"

	para "the best they"
	line "could be…"

	para "…But it still "
	line "wasn't enough…"
	done

MountMoonRivalTextAfter:
	text "<……> <……> <……>"

	para "…You won, fair"
	line "and square."

	para "I admit it. But"
	line "this isn't the"
	cont "end."

	para "I'm going to be"
	line "the greatest #-"
	cont "MON trainer ever."

	para "Because these guys"
	line "are behind me."

	para "…Listen, <PLAYER>."

	para "One of these days"
	line "I'm going to prove"

	para "how good I am by"
	line "beating you."
	done

MountMoonRivalTextLoss:
	text "<……> <……> <……>"

	para "I've repaid my"
	line "debt to you."

	para "With my #MON,"
	line "I'm going to beat"

	para "the CHAMPION and"
	line "become the world's"
	cont "greatest trainer."
	done

MountMoonB2FHPUp:
	itemball HP_UP

MountMoonB2FTMMegaPunch:
	itemball TM_MEGA_PUNCH

MountMoonB2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 27,  9, MOUNT_MOON_B1F, 2
	warp_event 27, 13, MOUNT_MOON_B1F, 5
	warp_event 17, 27, MOUNT_MOON_B1F, 6
	warp_event  7,  7, MOUNT_MOON_B1F, 7
	warp_event 35, 13, MOUNT_MOON_B1F, 10
	warp_event 39, 25, MOUNT_MOON_B1F, 12

	def_coord_events
	coord_event  6,  5, SCENE_MOUNTMOON_RIVAL_BATTLE, MountMoonRivalFight

	def_bg_events

	def_object_events
	object_event  7,  7, SPRITE_RIVAL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_BEAT_RIVAL_IN_MT_MOON
	object_event 13,  5, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, 0
	object_event 12, 15, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 3, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_MOUNT_MOON_ROCKETS
	object_event 17, 22, SPRITE_ROCKET, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_MOUNT_MOON_ROCKETS
	object_event 30,  9, SPRITE_ROCKET, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 3, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_MOUNT_MOON_ROCKETS
	object_event 39, 31, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 5, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_MOUNT_MOON_ROCKETS ; PETREL
	object_event 27, 21, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMoonB2FHPUp, EVENT_MOUNT_MOON_B2F_HP_UP
	object_event 31,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMoonB2FTMMegaPunch, EVENT_MOUNT_MOON_B2F_TM_MEGA_PUNCH
