	object_const_def
	const POWER_PLANT_B3F_ZAPDOS
	const POWER_PLANT_B3F_VOLTORB1
	const POWER_PLANT_B3F_VOLTORB2
	const POWER_PLANT_B3F_VOLTORB3
	const POWER_PLANT_B3F_ELECTRODE1
	const POWER_PLANT_B3F_VOLTORB4
	const POWER_PLANT_B3F_VOLTORB5
	const POWER_PLANT_B3F_ELECTRODE2
	const POWER_PLANT_B3F_VOLTORB6

PowerPlantB3F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, PowerPlantB3FZapdosCallback

PowerPlantB3FZapdosCallback:
	checkevent EVENT_FOUGHT_ZAPDOS
	iftrue .NoAppear
	checkevent ENGINE_UNLOCKED_UNOWNS_A_TO_K
	iffalse .NoAppear

.Appear:
	appear POWER_PLANT_B3F_ZAPDOS
	endcallback

.NoAppear:
	disappear POWER_PLANT_B3F_ZAPDOS
	endcallback

PowerPlantB3FVoltorb1Callback:
	checkevent EVENT_POWER_PLANT_B3F_VOLTORB1
	iftrue .NoAppear

.Appear:
	appear POWER_PLANT_B3F_VOLTORB1
	endcallback

.NoAppear:
	disappear POWER_PLANT_B3F_VOLTORB1
	endcallback

PowerPlantB3FVoltorb2Callback:
	checkevent EVENT_POWER_PLANT_B3F_VOLTORB2
	iftrue .NoAppear

.Appear:
	appear POWER_PLANT_B3F_VOLTORB2
	endcallback

.NoAppear:
	disappear POWER_PLANT_B3F_VOLTORB2
	endcallback

PowerPlantB3FVoltorb3Callback:
	checkevent EVENT_POWER_PLANT_B3F_VOLTORB3
	iftrue .NoAppear

.Appear:
	appear POWER_PLANT_B3F_VOLTORB3
	endcallback

.NoAppear:
	disappear POWER_PLANT_B3F_VOLTORB3
	endcallback

PowerPlantB3FElectrode1Callback:
	checkevent EVENT_POWER_PLANT_B3F_ELECTRODE1
	iftrue .NoAppear

.Appear:
	appear POWER_PLANT_B3F_ELECTRODE1
	endcallback

.NoAppear:
	disappear POWER_PLANT_B3F_ELECTRODE1
	endcallback

PowerPlantB3FVoltorb4Callback:
	checkevent EVENT_POWER_PLANT_B3F_VOLTORB4
	iftrue .NoAppear

.Appear:
	appear POWER_PLANT_B3F_VOLTORB4
	endcallback

.NoAppear:
	disappear POWER_PLANT_B3F_VOLTORB4
	endcallback

PowerPlantB3FVoltorb5Callback:
	checkevent EVENT_POWER_PLANT_B3F_VOLTORB5
	iftrue .NoAppear

.Appear:
	appear POWER_PLANT_B3F_VOLTORB5
	endcallback

.NoAppear:
	disappear POWER_PLANT_B3F_VOLTORB5
	endcallback

PowerPlantB3FElectrode2Callback:
	checkevent EVENT_POWER_PLANT_B3F_ELECTRODE2
	iftrue .NoAppear

.Appear:
	appear POWER_PLANT_B3F_ELECTRODE2
	endcallback

.NoAppear:
	disappear POWER_PLANT_B3F_ELECTRODE2
	endcallback

PowerPlantB3FVoltorb6Callback:
	checkevent EVENT_POWER_PLANT_B3F_VOLTORB6
	iftrue .NoAppear

.Appear:
	appear POWER_PLANT_B3F_VOLTORB6
	endcallback

.NoAppear:
	disappear POWER_PLANT_B3F_VOLTORB6
	endcallback	

PowerPlantB3FZapdos:
	faceplayer
	opentext
	writetext ZapdosText
	cry ZAPDOS
	pause 15
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon ZAPDOS, 50
	startbattle
	disappear POWER_PLANT_B3F_ZAPDOS
	setevent EVENT_FOUGHT_ZAPDOS
	reloadmapafterbattle
	end

ZapdosText:
	text "Gyaoo!"
	done

PowerPlantB3FVoltorb1:
	cry VOLTORB
	pause 15
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon VOLTORB, 40
	startbattle
	disappear POWER_PLANT_B3F_VOLTORB1
	setevent EVENT_POWER_PLANT_B3F_VOLTORB1
	reloadmapafterbattle
	end

PowerPlantB3FVoltorb2:
	cry VOLTORB
	pause 15
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon VOLTORB, 40
	startbattle
	disappear POWER_PLANT_B3F_VOLTORB2
	setevent EVENT_POWER_PLANT_B3F_VOLTORB2
	reloadmapafterbattle
	end

PowerPlantB3FVoltorb3:
	cry VOLTORB
	pause 15
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon VOLTORB, 40
	startbattle
	disappear POWER_PLANT_B3F_VOLTORB3
	setevent EVENT_POWER_PLANT_B3F_VOLTORB3
	reloadmapafterbattle
	end

PowerPlantB3FElectrode1:
	cry ELECTRODE
	pause 15
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon ELECTRODE, 43
	startbattle
	disappear POWER_PLANT_B3F_ELECTRODE1
	setevent EVENT_POWER_PLANT_B3F_ELECTRODE1
	reloadmapafterbattle
	end

PowerPlantB3FVoltorb4:
	cry VOLTORB
	pause 15
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon VOLTORB, 40
	startbattle
	disappear POWER_PLANT_B3F_VOLTORB4
	setevent EVENT_POWER_PLANT_B3F_VOLTORB4
	reloadmapafterbattle
	end

PowerPlantB3FVoltorb5:
	cry VOLTORB
	pause 15
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon VOLTORB, 40
	startbattle
	disappear POWER_PLANT_B3F_VOLTORB5
	setevent EVENT_POWER_PLANT_B3F_VOLTORB5
	reloadmapafterbattle
	end

PowerPlantB3FElectrode2:
	cry ELECTRODE
	pause 15
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon ELECTRODE, 43
	startbattle
	disappear POWER_PLANT_B3F_ELECTRODE2
	setevent EVENT_POWER_PLANT_B3F_ELECTRODE2
	reloadmapafterbattle
	end

PowerPlantB3FVoltorb6:
	cry VOLTORB
	pause 15
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon VOLTORB, 40
	startbattle
	disappear POWER_PLANT_B3F_VOLTORB6
	setevent EVENT_POWER_PLANT_B3F_VOLTORB6
	reloadmapafterbattle
	end

PowerPlantB3FCarbos:
	itemball CARBOS

PowerPlantB3FHPUp:
	itemball HP_UP

PowerPlantB3FRareCandy:
	itemball RARE_CANDY

PowerPlantB3FTMThunder:
	itemball TM_THUNDER

PowerPlantB3FTMReflect:
	itemball TM_REFLECT

PowerPlantB3FHiddenPPUp:
	hiddenitem PP_UP, EVENT_POWER_PLANT_B3F_HIDDEN_PP_UP

PowerPlantB3FHiddenMaxElixer:
	hiddenitem MAX_ELIXER, EVENT_POWER_PLANT_B3F_HIDDEN_MAX_ELIXER

PowerPlantB3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0, 10, MOUNT_MOON_B2F, 11
	warp_event  0, 11, MOUNT_MOON_B2F, 11
	warp_event  3, 32, POWER_PLANT_B2F, 4

	def_coord_events

	def_bg_events
	bg_event 12,  1, BGEVENT_ITEM, PowerPlantB3FHiddenPPUp
	bg_event 17, 16, BGEVENT_ITEM, PowerPlantB3FHiddenMaxElixer

	def_object_events
	object_event  4,  9, SPRITE_MOLTRES, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, PowerPlantB3FZapdos, EVENT_POWER_PLANT_ZAPDOS
	object_event  9, 20, SPRITE_VOLTORB, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlantB3FVoltorb1, EVENT_POWER_PLANT_B3F_VOLTORB1
	object_event 32, 18, SPRITE_VOLTORB, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlantB3FVoltorb2, EVENT_POWER_PLANT_B3F_VOLTORB2
	object_event 21, 24, SPRITE_VOLTORB, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlantB3FVoltorb3, EVENT_POWER_PLANT_B3F_VOLTORB3
	object_event 25, 18, SPRITE_VOLTORB, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlantB3FElectrode1, EVENT_POWER_PLANT_B3F_ELECTRODE1
	object_event 23, 34, SPRITE_VOLTORB, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlantB3FVoltorb4, EVENT_POWER_PLANT_B3F_VOLTORB4
	object_event 26, 29, SPRITE_VOLTORB, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlantB3FVoltorb5, EVENT_POWER_PLANT_B3F_VOLTORB5
	object_event 21, 14, SPRITE_VOLTORB, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlantB3FElectrode2, EVENT_POWER_PLANT_B3F_ELECTRODE2
	object_event 37, 32, SPRITE_VOLTORB, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlantB3FVoltorb6, EVENT_POWER_PLANT_B3F_VOLTORB6
	object_event  7, 25, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PowerPlantB3FCarbos, EVENT_POWER_PLANT_B3F_CARBOS
	object_event 28,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PowerPlantB3FHPUp, EVENT_POWER_PLANT_B3F_HP_UP
	object_event 34,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PowerPlantB3FRareCandy, EVENT_POWER_PLANT_B3F_RARE_CANDY
	object_event 26, 32, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PowerPlantB3FTMThunder, EVENT_POWER_PLANT_B3F_TM_THUNDER
	object_event 20, 32, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PowerPlantB3FTMReflect, EVENT_POWER_PLANT_B3F_TM_REFLECT
