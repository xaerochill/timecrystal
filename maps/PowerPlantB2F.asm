	object_const_def
	const POWER_PLANT_B2F_ROCKET

PowerPlantB2F_MapScripts:
	def_scene_scripts
	scene_script PowerPlantB2FNoop1Scene, SCENE_POWER_PLANT_B2F_ROCKET_ENCOUNTER
	scene_script PowerPlantB2FNoop2Scene, SCENE_POWER_PLANT_B2F_NOOP

	def_callbacks
	callback MAPCALLBACK_OBJECTS, PowerPlantB2FRocketCallback

PowerPlantB2FRocketCallback:
	checkevent POWER_PLANT_B2F_ROCKET
	iffalse .appear
	disappear POWER_PLANT_B2F_ROCKET
	endcallback

.appear
	appear POWER_PLANT_B2F_ROCKET
	endcallback

PowerPlantB2FNoop1Scene:
	end

PowerPlantB2FNoop2Scene:
	end

PowerPlantB2FGruntScene:
	special FadeOutMusic
	applymovement POWER_PLANT_B2F_ROCKET, PowerPlantB2FGruntChecksLeftMovement
	showemote EMOTE_QUESTION, POWER_PLANT_B2F_ROCKET, 15
	applymovement POWER_PLANT_B2F_ROCKET, PowerPlantB2FGruntChecksRightMovement
	showemote EMOTE_QUESTION, POWER_PLANT_B2F_ROCKET, 15
	applymovement POWER_PLANT_B2F_ROCKET, PowerPlantB2FGruntChecksDownMovement
	showemote EMOTE_SAD, POWER_PLANT_B2F_ROCKET, 15
	applymovement POWER_PLANT_B2F_ROCKET, PowerPlantB2FGruntGoesDownMovement
	opentext
	writetext PowerPlantB2FGruntBigMistakeText
	waitbutton
	closetext
	scall PowerPlantB2FGruntFight
	applymovement POWER_PLANT_B2F_ROCKET, PowerPlantB2FGruntRunsOutMovement
	playsound SFX_EXIT_BUILDING
	disappear POWER_PLANT_B2F_ROCKET
	setevent EVENT_FOUND_POWER_PLANT_ROCKET
	clearevent EVENT_ROUTE_24_ROCKET
	clearevent EVENT_ROUTE_25_MISTY_BOYFRIEND
	setmapscene ROUTE_25, SCENE_ROUTE25_MISTYS_DATE
	setmapscene POWER_PLANT, SCENE_POWERPLANT_NOOP
	waitsfx
	special RestartMapMusic
	pause 15
	end

PowerPlantB2FGruntFight:
	playmusic MUSIC_ROCKET_ENCOUNTER
	opentext
	writetext PowerPlantB2FGruntFightText
	waitbutton
	closetext
	winlosstext PowerPlantB2FGruntDefeatText, PowerPlantB2FGruntVictoryText
	setlasttalked POWER_PLANT_B2F_ROCKET
	loadtrainer GRUNTM, GRUNTM_1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle

.AfterBattle:
	opentext
	writetext PowerPlantB2FGruntAfterText
	waitbutton
	closetext
	end

PowerPlantB2FGruntChecksLeftMovement:
	turn_head LEFT
	step_end

PowerPlantB2FGruntChecksRightMovement:
	turn_head RIGHT
	step_end

	PowerPlantB2FGruntChecksDownMovement:
	turn_head DOWN
	step_end

PowerPlantB2FGruntGoesDownMovement:
	turn_step DOWN
	step_end

PowerPlantB2FGruntRunsOutMovement:
	big_step RIGHT
	big_step DOWN
	step_end

PowerPlantB2FPC1:
	jumptext PowerPlantB2FPC1Text

PowerPlantB2FPC2:
	jumptext PowerPlantB2FPC2Text

PowerPlantB2FPC3:
	jumptext PowerPlantB2FPC3Text

PowerPlantB2FPC4:
	jumptext PowerPlantB2FPC4Text

PowerPlantB2FGruntBigMistakeText:
	text "Dude, why did you"
	line "even come here..."

	para "This is all a big"
	line "mistake, you see."
	done

PowerPlantB2FGruntFightText:
	text "I guess we need to"
	line "fight then. I hope"
	text "that you're ready!"
	done

PowerPlantB2FGruntDefeatText:
	text "Dude, what the..."
	line "I had no chance!"
	done

PowerPlantB2FGruntVictoryText:
	text "Dude, you better"
	line "start training!"
	done

PowerPlantB2FGruntAfterText:
	text "Now you found me"
	line "I better go home"
	cont "to UNOVA."

	para "Maybe we will meet"
	line "again, who knows!"
	done

PowerPlantB2FPC1Text:
	text "The monitor was"
	line "smashed. It does"
	cont "not seem to work."

PowerPlantB2FPC2Text:
	text "A camera feed is"
	line "open. It shows"
	cont "various rooms"
	cont "labelled B3F..."
	done

PowerPlantB2FPC3Text:
	text "This is an email"
	line "chain about indus-"
	cont "trial waste."

	para "The scientists"
	line "that analysed the"
	cont "cells of a MUK"
	cont "from this PLANT"

	para "found substances"
	line "inconceivable in"
	cont "living creatures!"
	done

PowerPlantB2FPC4Text:
	text "An internal memo"
	line "about an incident"
	cont "with a #MON is"
	cont "shown on screen."

	para "It says that an"
	line "ELECTABUZZ has"
	cont "viciously attacked"
	cont "an ENGINEER here!"

	para "He was wearing a"
	line "red scarf and no"
	cont "one else was hurt."
	done

PowerPlantB2F_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  27, 2, POWER_PLANT_B1F, 1
	warp_event  23, 14, POWER_PLANT_B1F, 2
	warp_event  27, 26, POWER_PLANT_B1F, 3
	warp_event  3, 26, POWER_PLANT_B3F, 3

	def_coord_events
	coord_event 13, 23, SCENE_POWER_PLANT_B2F_ROCKET_ENCOUNTER, PowerPlantB2FGruntScene

	def_bg_events
	bg_event 12, 19, BGEVENT_READ, PowerPlantB2FPC1
	bg_event 13, 19, BGEVENT_READ, PowerPlantB2FPC2
	bg_event 16, 19, BGEVENT_READ, PowerPlantB2FPC3
	bg_event 17, 19, BGEVENT_READ, PowerPlantB2FPC4

	def_object_events
	object_event 13, 20, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlantB2FGruntScene, 0
	