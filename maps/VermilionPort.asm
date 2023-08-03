	object_const_def
	const VERMILION_PORT_MEW
	const VERMILIONPORT_SAILOR1
	const VERMILIONPORT_SAILOR2
	const VERMILIONPORT_SUPER_NERD

VermilionPort_MapScripts:
	def_scene_scripts
	scene_script VermilionPortNoopScene,      SCENE_VERMILIONPORT_ASK_ENTER_SHIP
	scene_script VermilionPortLeaveShipScene, SCENE_VERMILIONPORT_LEAVE_SHIP

	def_callbacks
	callback MAPCALLBACK_NEWMAP, VermilionPortFlypointCallback
	callback MAPCALLBACK_TILES, VermilionPortTruckCallback
	callback MAPCALLBACK_OBJECTS, VermilionPortMewCallback

VermilionPortMewCallback:
	disappear VERMILION_PORT_MEW
	endcallback

VermilionPortTruckCallback:
	checkevent EVENT_FOUGHT_MEW
	iffalse .StayTruck
	changeblock 32,  8, $23 ; truck right
	changeblock 30,  8, $22 ; truck left
.StayTruck:
	endcallback

VermilionPortMew:
	checkevent EVENT_FOUGHT_MEW
	iffalse .Track
	opentext
	writetext VermilionPortMewText
	waitbutton
	closetext
	checkevent ENGINE_UNLOCKED_UNOWNS_X_TO_Z
	iffalse .Trick
	special FadeOutMusic
	showemote EMOTE_QUESTION, PLAYER, 15
	refreshscreen
	changeblock 32,  8, $23 ; truck right
	changeblock 30,  8, $22 ; truck left
	earthquake 30
	reloadmappart
	pause 15
	appear VERMILION_PORT_MEW
	faceplayer
	opentext
	writetext MewText
	cry MEW
	pause 15
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon MEW, 5
	startbattle
	disappear VERMILION_PORT_MEW
	setevent EVENT_FOUGHT_MEW
	reloadmapafterbattle
	end
	
.Trick
	opentext
	writetext TrickText
	closetext
	end

.Track
	opentext
	writetext TrackText
	closetext
	end

VermilionPortMewText:
	text "There is"
	line "something"
	cont "under the truck!"
	done

MewText:
	text "Mew!"
	done

TrickText:
	text "Oh... It must"
	line "have been a"
	cont "trick of light."
	done

TrackText:
	text "There are tire"
	line "tracks visible"
	cont "on the ground."
	done


VermilionPortNoopScene:
	end

VermilionPortLeaveShipScene:
	sdefer VermilionPortLeaveShipScript
	end

VermilionPortFlypointCallback:
	setflag ENGINE_FLYPOINT_VERMILION
	endcallback

VermilionPortLeaveShipScript:
	applymovement PLAYER, VermilionPortLeaveFastShipMovement
	appear VERMILIONPORT_SAILOR1
	setscene SCENE_VERMILIONPORT_ASK_ENTER_SHIP
	setevent EVENT_FAST_SHIP_CABINS_SE_SSE_CAPTAINS_CABIN_TWIN_1
	setevent EVENT_FAST_SHIP_CABINS_SE_SSE_GENTLEMAN
	setevent EVENT_FAST_SHIP_PASSENGERS_FIRST_TRIP
	clearevent EVENT_OLIVINE_PORT_PASSAGE_POKEFAN_M
	setevent EVENT_FAST_SHIP_FIRST_TIME
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	end

VermilionPortSailorAtGangwayScript:
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue VermilionPortAlreadyRodeScript
	writetext VermilionPortDepartingText
	waitbutton
	closetext
	turnobject VERMILIONPORT_SAILOR1, DOWN
	pause 10
	playsound SFX_EXIT_BUILDING
	disappear VERMILIONPORT_SAILOR1
	waitsfx
	applymovement PLAYER, VermilionPortEnterFastShipMovement
	playsound SFX_EXIT_BUILDING
	special FadeOutPalettes
	waitsfx
	setevent EVENT_FAST_SHIP_PASSENGERS_EASTBOUND
	clearevent EVENT_FAST_SHIP_PASSENGERS_WESTBOUND
	clearevent EVENT_BEAT_POKEMANIAC_ETHAN
	clearevent EVENT_BEAT_BURGLAR_COREY
	clearevent EVENT_BEAT_BUG_CATCHER_KEN
	clearevent EVENT_BEAT_GUITARIST_CLYDE
	clearevent EVENT_BEAT_POKEFANM_JEREMY
	clearevent EVENT_BEAT_POKEFANF_GEORGIA
	clearevent EVENT_BEAT_SAILOR_KENNETH
	clearevent EVENT_BEAT_TEACHER_SHIRLEY
	clearevent EVENT_BEAT_SCHOOLBOY_NATE
	clearevent EVENT_BEAT_SCHOOLBOY_RICKY
	setevent EVENT_FAST_SHIP_DESTINATION_OLIVINE
	appear VERMILIONPORT_SAILOR1
	setmapscene FAST_SHIP_1F, SCENE_FASTSHIP1F_ENTER_SHIP
	warp FAST_SHIP_1F, 25, 1
	end

VermilionPortAlreadyRodeScript:
	writetext VermilionPortCantBoardText
	waitbutton
	closetext
	end

VermilionPortWalkUpToShipScript:
	turnobject VERMILIONPORT_SAILOR2, RIGHT
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue .skip
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iftrue .skip
	turnobject PLAYER, LEFT
	opentext
	readvar VAR_WEEKDAY
	ifequal MONDAY, .NextShipWednesday
	ifequal TUESDAY, .NextShipWednesday
	ifequal THURSDAY, .NextShipSunday
	ifequal FRIDAY, .NextShipSunday
	ifequal SATURDAY, .NextShipSunday
	writetext VermilionPortAskBoardingText
	yesorno
	iffalse VermilionPortNotRidingMoveAwayScript
	writetext VermilionPortAskTicketText
	promptbutton
	checkitem S_S_TICKET
	iffalse .NoTicket
	writetext VermilionPortSSTicketText
	waitbutton
	closetext
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	applymovement PLAYER, VermilionPortApproachFastShipMovement
	sjump VermilionPortSailorAtGangwayScript

.NoTicket:
	writetext VermilionPortNoTicketText
	waitbutton
	closetext
	applymovement PLAYER, VermilionPortCannotEnterFastShipMovement
	end

.NextShipWednesday:
	writetext VermilionPortSailMondayText
	waitbutton
	closetext
	applymovement PLAYER, VermilionPortCannotEnterFastShipMovement
	end

.NextShipSunday:
	writetext VermilionPortSailSundayText
	waitbutton
	closetext
	applymovement PLAYER, VermilionPortCannotEnterFastShipMovement
	end

.skip:
	end

VermilionPortNotRidingScript:
	writetext VermilionPortComeAgainText
	waitbutton
	closetext
	end

VermilionPortNotRidingMoveAwayScript:
	writetext VermilionPortComeAgainText
	waitbutton
	closetext
	applymovement PLAYER, VermilionPortCannotEnterFastShipMovement
	end

VermilionPortSailorScript:
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue VermilionPortAlreadyRodeScript
	readvar VAR_WEEKDAY
	ifequal MONDAY, .NextShipWednesday
	ifequal TUESDAY, .NextShipWednesday
	ifequal THURSDAY, .NextShipSunday
	ifequal FRIDAY, .NextShipSunday
	ifequal SATURDAY, .NextShipSunday
	writetext VermilionPortAskBoardingText
	yesorno
	iffalse VermilionPortNotRidingScript
	writetext VermilionPortAskTicketText
	promptbutton
	checkitem S_S_TICKET
	iffalse .NoTicket
	writetext VermilionPortSSTicketText
	waitbutton
	closetext
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	applymovement PLAYER, VermilionPortApproachFastShipRightMovement
	sjump VermilionPortSailorAtGangwayScript

.NoTicket:
	writetext VermilionPortNoTicketText
	waitbutton
	closetext
	end

.NextShipWednesday:
	writetext VermilionPortSailMondayText
	waitbutton
	closetext
	end

.NextShipSunday:
	writetext VermilionPortSailSundayText
	waitbutton
	closetext
	end

VermilionPortSuperNerdScript:
	faceplayer
	opentext
	writetext VermilionPortSuperNerdText
	waitbutton
	closetext
	end

VermilionPortHiddenIron:
	hiddenitem IRON, EVENT_VERMILION_PORT_HIDDEN_IRON

VermilionPortEnterFastShipMovement:
	step DOWN
	step_end

VermilionPortLeaveFastShipMovement:
	step UP
	step_end

VermilionPortCannotEnterFastShipMovement:
	step RIGHT
	turn_head LEFT
	step_end

VermilionPortApproachFastShipMovement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

VermilionPortApproachFastShipRightMovement:
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

VermilionPortDepartingText:
	text "We're departing"
	line "soon. Please get"
	cont "on board."
	done

VermilionPortCantBoardText:
	text "Sorry. You can't"
	line "board now."
	done

VermilionPortAskBoardingText:
	text "Welcome to FAST"
	line "SHIP S.S.AQUA."

	para "Will you be board-"
	line "ing today?"
	done

VermilionPortAskTicketText:
	text "May I see your"
	line "S.S.TICKET?"
	done

VermilionPortComeAgainText:
	text "We hope to see you"
	line "again!"
	done

VermilionPortSSTicketText:
	text "<PLAYER> flashed"
	line "the S.S.TICKET."

	para "That's it."
	line "Thank you!"
	done

VermilionPortNoTicketText:
	text "<PLAYER> tried to"
	line "show the S.S."
	cont "TICKET…"

	para "…But no TICKET!"

	para "Sorry!"
	line "You may board only"

	para "if you have an"
	line "S.S.TICKET."
	done

VermilionPortSailMondayText:
	text "The FAST SHIP will"
	line "sail on Wednesday."
	done

VermilionPortSailSundayText:
	text "The FAST SHIP will"
	line "sail next Sunday."
	done

VermilionPortSuperNerdText:
	text "You came from"
	line "JOHTO?"

	para "I hear many rare"
	line "#MON live over"
	cont "there."
	done

VermilionPort_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17,  5, VERMILION_PORT_PASSAGE, 5
	warp_event 17, 15, FAST_SHIP_1F, 1

	def_coord_events
	coord_event 17,  9, SCENE_VERMILIONPORT_ASK_ENTER_SHIP, VermilionPortWalkUpToShipScript

	def_bg_events
	bg_event 25, 14, BGEVENT_ITEM, VermilionPortHiddenIron
	bg_event 33,  8, BGEVENT_LEFT, VermilionPortMew

	def_object_events
	object_event 33,  8, SPRITE_CLEFAIRY, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, VermilionPortMew, EVENT_VERMILION_PORT_MEW
	object_event 17, 15, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionPortSailorAtGangwayScript, EVENT_VERMILION_PORT_SAILOR_AT_GANGWAY
	object_event 16,  9, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionPortSailorScript, -1
	object_event 34, 12, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionPortSuperNerdScript, -1
