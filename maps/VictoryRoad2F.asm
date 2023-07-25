	object_const_def
	const VICTORY_ROAD_2F_MOLTRES
	const VICTORYROAD_RIVAL

VictoryRoad2F_MapScripts:
	def_scene_scripts
	scene_script VictoryRoadNoop1Scene, SCENE_VICTORYROAD_RIVAL_BATTLE
	scene_script VictoryRoadNoop2Scene, SCENE_VICTORYROAD_NOOP

	def_callbacks

VictoryRoadNoop1Scene:
	end

VictoryRoadNoop2Scene:
	end

	callback MAPCALLBACK_OBJECTS, VictoryRoad2FMoltresCallback

VictoryRoad2FMoltresCallback:
	checkevent EVENT_FOUGHT_MOLTRES
	iftrue .NoAppear
	checkevent ENGINE_UNLOCKED_UNOWNS_A_TO_K
	iftrue .NoAppear

.Appear:
	appear VICTORY_ROAD_2F_MOLTRES
	endcallback

.NoAppear:
	disappear VICTORY_ROAD_2F_MOLTRES
	endcallback

VictoryRoad2FMoltres:
	faceplayer
	opentext
	writetext MoltresText
	cry MOLTRES
	pause 15
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon MOLTRES, 50
	startbattle
	disappear VICTORY_ROAD_2F_MOLTRES
	setevent EVENT_FOUGHT_MOLTRES
	reloadmapafterbattle
	end

MoltresText:
	text "Gyaoo!"
	done

VictoryRoadRivalLeft:
	turnobject PLAYER, LEFT
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	appear VICTORYROAD_RIVAL
	applymovement VICTORYROAD_RIVAL, VictoryRoadRivalBattleApproachMovement1
	scall VictoryRoadRivalNext
	playsound SFX_TACKLE
	applymovement PLAYER, VictoryRoadRivalShovesYouOutMovement
	applymovement VICTORYROAD_RIVAL, VictoryRoadRivalBattleExitMovement1
	disappear VICTORYROAD_RIVAL
	setscene SCENE_VICTORYROAD_NOOP
	playmapmusic
	end

VictoryRoadRivalRight:
	turnobject PLAYER, LEFT
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	appear VICTORYROAD_RIVAL
	applymovement VICTORYROAD_RIVAL, VictoryRoadRivalBattleApproachMovement2
	turnobject PLAYER, UP
	scall VictoryRoadRivalNext
	applymovement VICTORYROAD_RIVAL, VictoryRoadRivalBattleExitMovement2
	disappear VICTORYROAD_RIVAL
	setscene SCENE_VICTORYROAD_NOOP
	playmapmusic
	end

VictoryRoadRivalNext:
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext VictoryRoadRivalBeforeText
	waitbutton
	closetext
	setevent EVENT_RIVAL_VICTORY_ROAD
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue .GotTotodile
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue .GotChikorita
	winlosstext VictoryRoadRivalDefeatText, VictoryRoadRivalVictoryText
	setlasttalked VICTORYROAD_RIVAL
	loadtrainer RIVAL1, RIVAL1_5_TOTODILE
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle

.GotTotodile:
	winlosstext VictoryRoadRivalDefeatText, VictoryRoadRivalVictoryText
	setlasttalked VICTORYROAD_RIVAL
	loadtrainer RIVAL1, RIVAL1_5_CHIKORITA
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle

.GotChikorita:
	winlosstext VictoryRoadRivalDefeatText, VictoryRoadRivalVictoryText
	setlasttalked VICTORYROAD_RIVAL
	loadtrainer RIVAL1, RIVAL1_5_CYNDAQUIL
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle

.AfterBattle:
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext VictoryRoadRivalAfterText
	waitbutton
	closetext
	end

VictoryRoadHiddenMaxPotion:
	hiddenitem MAX_POTION, EVENT_VICTORY_ROAD_HIDDEN_MAX_POTION

VictoryRoadHiddenFullHeal:
	hiddenitem FULL_HEAL, EVENT_VICTORY_ROAD_HIDDEN_FULL_HEAL

VictoryRoadRivalBattleApproachMovement1:
	step DOWN
	step RIGHT
	step RIGHT
	step_end

VictoryRoadRivalBattleApproachMovement2:
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step_end

VictoryRoadRivalBattleExitMovement1:
	step RIGHT
	step RIGHT
	step UP
	step_end
	
VictoryRoadRivalShovesYouOutMovement:
	turn_head UP
	fix_facing
	step DOWN
	remove_fixed_facing
	step_end
	
VictoryRoadRivalBattleExitMovement2:
	step RIGHT
	step UP
	step_end

VictoryRoadRivalBeforeText:
	text "Hold it."

	para "…Are you going to"
	line "take the #MON"
	cont "LEAGUE challenge?"

	para "…Don't make me"
	line "laugh."

	para "You're so much"
	line "weaker than I am."

	para "I'm not like I was"
	line "before."

	para "I now have the"
	line "best and strongest"

	para "#MON with me."
	line "I'm invincible!"

	para "<PLAYER>!"
	line "I challenge you!"
	done

VictoryRoadRivalDefeatText:
	text "…I couldn't win…"

	para "I gave it every-"
	line "thing I had…"

	para "What you possess,"
	line "and what I lack…"

	para "I'm beginning to"
	line "understand what"

	para "that dragon master"
	line "said to me…"
	done

VictoryRoadRivalAfterText:
	text "…I haven't given up"
	line "on becoming the"
	cont "greatest trainer…"

	para "I'm going to find"
	line "out why I can't"

	para "win and become"
	line "stronger…"

	para "When I do, I will"
	line "challenge you."

	para "And I'll beat you"
	line "down with all my"
	cont "power."

	para "…Humph! You keep"
	line "at it until then."
	done

VictoryRoadRivalVictoryText:
	text "…Humph!"

	para "When it comes down"
	line "to it, nothing can"
	cont "beat power."

	para "I don't need any-"
	line "thing else."
	done

VictoryRoad2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3, 11, VICTORY_ROAD_1F, 2
	warp_event 31,  9, ROUTE_23, 3
	warp_event 25,  9, VICTORY_ROAD_3F, 1
	warp_event 27, 15, VICTORY_ROAD_3F, 3
	warp_event 29, 11, VICTORY_ROAD_3F, 2
	warp_event  5,  3, VICTORY_ROAD_3F, 4
	warp_event 26, 18, VICTORY_ROAD_3F, 5

	def_coord_events
	coord_event 30, 10, SCENE_VICTORYROAD_RIVAL_BATTLE, VictoryRoadRivalLeft
	coord_event 30, 11, SCENE_VICTORYROAD_RIVAL_BATTLE, VictoryRoadRivalRight

	def_bg_events
	bg_event  7, 29, BGEVENT_ITEM, VictoryRoadHiddenMaxPotion
	bg_event  7, 65, BGEVENT_ITEM, VictoryRoadHiddenFullHeal

	def_object_events
	object_event 13,  7, SPRITE_MOLTRES, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VictoryRoad2FMoltres, EVENT_VICTORY_ROAD_MOLTRES
	object_event 27,  9, SPRITE_RIVAL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RIVAL_VICTORY_ROAD
	object_event 16, 48, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoadMaxRevive, EVENT_VICTORY_ROAD_MAX_REVIVE
	object_event 20, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoadFullHeal, EVENT_VICTORY_ROAD_FULL_HEAL
	object_event 11, 38, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoadHPUp, EVENT_VICTORY_ROAD_HP_UP
