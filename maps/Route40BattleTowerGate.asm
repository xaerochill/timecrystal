	object_const_def
	const ROUTE40BATTLETOWERGATE_ROCKER
	const ROUTE40BATTLETOWERGATE_TWIN

Route40BattleTowerGate_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, RouteBattleTowerGateShowSailorCallback

RouteBattleTowerGateShowSailorCallback:
	checkevent ENGINE_UNLOCKED_UNOWNS_X_TO_Z
	iffalse .nomobile
	clearevent EVENT_BATTLE_TOWER_OPEN_CIVILIANS

.nomobile
	return

Route40BattleTowerGateRockerScript:
	jumptextfaceplayer Route40BattleTowerGateRockerText

Route40BattleTowerGateTwinScript:
	checkevent ENGINE_UNLOCKED_UNOWNS_X_TO_Z
	iftrue .mobile
	jumptextfaceplayer Route40BattleTowerGateTwinText

.mobile
	jumptextfaceplayer Route40BattleTowerGateTwinMobileText

Route40BattleTowerGateTwinText:
	text "Did you come to"
	line "see the BATTLE"
	cont "TOWER too?"

	para "But I guess you"
	line "can't go in yet."
	done

Route40BattleTowerGateTwinMobileText:
	text "BATTLE TOWER has"
	line "opened."

	para "I want to go, but"
	line "I haven't thought"

	para "up a cool line for"
	line "when I win."
	done

Route40BattleTowerGateRockerText:
	text "Are you going to"
	line "the BATTLE TOWER?"

	para "This is a secret,"
	line "but if you win a"

	para "whole lot, you can"
	line "win special gifts."
	done

Route40BattleTowerGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, ROUTE_40, 1
	warp_event  5,  7, ROUTE_40, 1
	warp_event  4,  0, BATTLE_TOWER_OUTSIDE, 1
	warp_event  5,  0, BATTLE_TOWER_OUTSIDE, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  3, SPRITE_ROCKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route40BattleTowerGateRockerScript, EVENT_BATTLE_TOWER_OPEN_CIVILIANS
	object_event  7,  5, SPRITE_TWIN, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route40BattleTowerGateTwinScript, -1
