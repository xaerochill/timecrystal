	object_const_def
	const POWERPLANT_OFFICER1
	const POWERPLANT_GYM_GUIDE1
	const POWERPLANT_GYM_GUIDE2
	const POWERPLANT_OFFICER2
	const POWERPLANT_GYM_GUIDE3
	const POWERPLANT_MANAGER
	const POWERPLANT_FOREST

PowerPlant_MapScripts:
	def_scene_scripts
	scene_script PowerPlantNoop1Scene, SCENE_POWERPLANT_NOOP
	scene_script PowerPlantNoop2Scene, SCENE_POWERPLANT_GUARD_GETS_PHONE_CALL

	def_callbacks

PowerPlantNoop1Scene:
	end

PowerPlantNoop2Scene:
	end

PowerPlantGuardIntruderScript:
	playsound SFX_CALL
	showemote EMOTE_SHOCK, POWERPLANT_OFFICER1, 15
	waitsfx
	pause 30
	applymovement POWERPLANT_GYM_GUIDE2, PowerPlantGymGuide2Movement
	turnobject POWERPLANT_OFFICER1, LEFT
	turnobject POWERPLANT_GYM_GUIDE2, RIGHT
	opentext
	writetext PowerPlantOfficer1ShadyCharacterText
	waitbutton
	closetext
	turnobject POWERPLANT_OFFICER1, RIGHT
	turnobject PLAYER, LEFT
	opentext
	writetext PowerPlantOfficer1CouldIAskForYourCooperationText
	waitbutton
	closetext
	applymovement POWERPLANT_GYM_GUIDE2, PowerPlantGymGuide2ReturnMovement
	setscene SCENE_POWERPLANT_NOOP
	end

PowerPlantOfficerScript:
	faceplayer
	opentext
	checkevent EVENT_FOUND_POWER_PLANT_ROCKET
	iftrue .FoundRocket
	writetext PowerPlantOfficer1BrokeInText
	waitbutton
	closetext
	end

.FoundRocket:
	writetext PowerPlantOfficer1HaveToBeefUpSecurityText
	waitbutton
	closetext
	end

PowerPlantGymGuide1Script:
	faceplayer
	opentext
	checkevent EVENT_FOUND_POWER_PLANT_ROCKET
	iftrue .FoundRocket
	writetext PowerPlantGymGuide1DangerousText
	waitbutton
	closetext
	end

.FoundRocket:
	writetext PowerPlantGymGuide1DimwitsText
	waitbutton
	closetext
	end

PowerPlantGymGuide2Script:
	faceplayer
	opentext
	checkevent EVENT_FOUND_POWER_PLANT_ROCKET
	iftrue .FoundRocket
	writetext PowerPlantGymGuide2PowerPlantUpAndRunningText
	waitbutton
	closetext
	end

.FoundRocket:
	writetext PowerPlantGymGuide2PowerSourceText
	waitbutton
	closetext
	end

PowerPlantOfficer2Script:
	faceplayer
	opentext
	checkevent EVENT_FOUND_POWER_PLANT_ROCKET
	iftrue .FoundRocket
	writetext PowerPlantOfficer2PlantSecurityText
	waitbutton
	closetext
	end

.FoundRocket:
	writetext PowerPlantOfficer2PlantRevisionText
	waitbutton
	closetext
	end

PowerPlantGymGuide4Script:
	faceplayer
	opentext
	checkevent EVENT_FOUND_POWER_PLANT_ROCKET
	iftrue .FoundRocket
	writetext PowerPlantGymGuide4MagnetTrainConsumesElectricityText
	waitbutton
	closetext
	end

.FoundRocket:
	writetext PowerPlantGymGuide4WondersText
	waitbutton
	closetext
	end

PowerPlantManager:
	faceplayer
	opentext
	checkevent EVENT_FOUND_POWER_PLANT_ROCKET
	iftrue .FoundRocket
	writetext PowerPlantManagerPlantHistoryText
	waitbutton
	closetext
	end

.FoundRocket:
	writetext PowerPlantManagerIWontForgiveCulpritText
	setscene SCENE_POWERPLANT_GUARD_GETS_PHONE_CALL
	clearevent EVENT_SAFFRON_TRAIN_STATION_POPULATION
	setevent EVENT_ROUTE_24_ROCKET
	setevent EVENT_RESTORED_POWER_TO_KANTO
	clearevent EVENT_GOLDENROD_TRAIN_STATION_GENTLEMAN
	checkevent EVENT_GOT_TM07_ZAP_CANNON
	iftrue .GotZapCannon
	writetext PowerPlantManagerTakeThisTMText
	promptbutton
	verbosegiveitem TM_ZAP_CANNON
	iffalse .NoRoom
	setevent EVENT_GOT_TM07_ZAP_CANNON
	writetext PowerPlantManagerTM07IsZapCannonText
	waitbutton
.NoRoom:
	closetext
	end

.GotZapCannon:
	writetext PowerPlantManagerMyBelovedGeneratorText
	waitbutton
	closetext
	end

Forest:
	faceplayer
	opentext
	trade NPC_TRADE_FOREST
	waitbutton
	closetext
	end

PowerPlantBookshelf:
	jumpstd DifficultBookshelfScript

PowerPlantGymGuide2Movement:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step_end

PowerPlantGymGuide2ReturnMovement:
	step DOWN
	step DOWN
	step LEFT
	step LEFT
	turn_head DOWN
	step_end

PowerPlantOfficer1BrokeInText:
	text "Who breaks into"
	line "a POWER PLANT…"

	para "What is the world"
	line "coming to?"
	done

PowerPlantOfficer1ShadyCharacterText:
	text "I just got word"
	line "from downstairs."

	para "It appears that"
	line "shady characters"

	para "have been seen"
	line "loitering around"
	cont "in the basement."
	done

PowerPlantOfficer1CouldIAskForYourCooperationText:
	text "Could I ask for"
	line "your cooperation?"
	done

PowerPlantOfficer1HaveToBeefUpSecurityText:
	text "TEAM ROCKET?!"
	line "We'll have to beef"
	cont "up our security."
	done

PowerPlantGymGuide1DangerousText:
	text "Who in their right"
	line "mind wants to go"
	cont "down there?"

	para "There are lots of"
	line "strong and wild"
	cont "#MON around!"
	done

PowerPlantGymGuide1DimwitsText:
	text "Those TEAM ROCKET"
	line "dimwits are up to"
	cont "no good at all!"

	para "Then again, so did"
	line "the people abando-"
	cont "ning the PLANT."

	para "It is an economic"
	line "and ecological"
	cont "disaster..."
	done

PowerPlantGymGuide2PowerPlantUpAndRunningText:
	text "This POWER PLANT"
	line "had been abandoned"
	cont "in the past."

	para "We got it back up"
	line "and running to"

	para "provide power to"
	line "the KANTO region."
	done

PowerPlantGymGuide2PowerSourceText:
	text "Do you know how"
	line "we can generate"
	cont "electricity here?"

	text "The water currents"
	line "from nearby are"
	cont "our power source:"

	para "We call this an"
	line "underground hydro-"
	cont "electric power"
	cont "plant. Cool, eh?"
	done

PowerPlantOfficer2PlantSecurityText:
	text "The POWER PLANT's"
	line "security system is"
	cont "ancient, really."

	para "But since no one"
	line "ever goes down"
	cont "there, it is ok."
	done

PowerPlantOfficer2PlantRevisionText:
	text "I did not think"
	line "TEAM ROCKET would"
	cont "dare to break in!"

	para "We need to upgrade"
	line "our security sys-"
	cont "tem after all..."
	done

PowerPlantGymGuide4MagnetTrainConsumesElectricityText:
	text "The MAGNET TRAIN"
	line "consumes a lot of"
	cont "electricity."

	para "It was the main"
	line "reason to get"
	cont "the POWER PLANT"
	cont "running again."
	done

PowerPlantGymGuide4WondersText:
	text "What could TEAM"
	line "ROCKET possibly"
	cont "have wanted here?"

	para "Why are they in-"
	line "terested in our"
	cont "energy production?"
	done

PowerPlantManagerPlantHistoryText:
	text "MANAGER: I bought"
	line "the POWER PLANT"
	cont "years ago. My Plan"

	para "was to make it"
	line "clean and safe."

	para "I spent so much"
	line "time on this!"

	para "But downstairs"
	line "there are too"
	cont "many wild #MON."

	para "They attacked the"
	line "workers so we gave"
	cont "up removing the"
	cont "old toxic waste..."
	done

PowerPlantManagerIWontForgiveCulpritText:
	text "MANAGER: I won't"
	line "forgive him!"

	para "The culprit can"
	line "cry and apologize,"

	para "but I'll still"
	line "hammer him!"

	para "Gahahahah!"
	done

PowerPlantManagerTakeThisTMText:
	text "Wahah! Thanks!"

	para "Here! Take this TM"
	line "as a reward!"
	done

PowerPlantManagerTM07IsZapCannonText:
	text "MANAGER: TM07 is"
	line "my ZAP CANNON."

	para "It's a powerful"
	line "technique!"

	para "It's not what any-"
	line "one would consider"

	para "accurate, but it"
	line "packs a wallop!"
	done

PowerPlantManagerMyBelovedGeneratorText:
	text "MANAGER: My be-"
	line "loved generator!"

	para "Keep pumping the"
	line "electricity out!"
	done

PowerPlant_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2, 17, ROUTE_10_NORTH, 2
	warp_event  3, 17, ROUTE_10_NORTH, 2
	warp_event  9, 14, POWER_PLANT_B1F, 1

	def_coord_events
	coord_event  9, 15, SCENE_POWERPLANT_GUARD_GETS_PHONE_CALL, PowerPlantGuardIntruderScript

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, PowerPlantBookshelf
	bg_event  1,  1, BGEVENT_READ, PowerPlantBookshelf

	def_object_events
	object_event  8, 14, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PowerPlantOfficerScript, -1
	object_event  2,  9, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PowerPlantGymGuide1Script, -1
	object_event  2, 11, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PowerPlantGymGuide2Script, -1
	object_event  9,  3, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PowerPlantOfficer2Script, -1
	object_event  7,  2, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PowerPlantGymGuide4Script, -1
	object_event 14, 10, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PowerPlantManager, -1
	object_event  5,  5, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Forest, -1
