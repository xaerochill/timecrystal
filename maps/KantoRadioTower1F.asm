	object_const_def
	const LAVRADIOTOWER1F_RECEPTIONIST
	const LAVRADIOTOWER1F_OFFICER
	const LAVRADIOTOWER1F_SUPER_NERD1
	const LAVRADIOTOWER1F_GENTLEMAN
	const LAVRADIOTOWER1F_SUPER_NERD2

KantoRadioTower1F_MapScripts:
	def_scene_scripts

	def_callbacks

KantoRadioTower1FReceptionistScript:
	jumptextfaceplayer KantoRadioTower1FReceptionistText

KantoRadioTower1FOfficerScript:
	jumptextfaceplayer KantoRadioTower1FOfficerText

KantoRadioTower1FSuperNerd1Script:
	jumptextfaceplayer KantoRadioTower1FSuperNerd1Text

KantoRadioTower1FGentlemanVirgilScript:
	faceplayer
	opentext
	checkflag ENGINE_EXPN_CARD
	iftrue .GotExpnCard
	writetext KantoRadioTower1FGentlemanVirgilText_Intro
	waitbutton
	closetext
	winlosstext KantoRadioTower1FGentlemanVirgilText_Win, KantoRadioTower1FGentlemanVirgilText_Loss
	loadtrainer GENTLEMAN, VIRGIL
	startbattle
	reloadmapafterbattle
	writetext KantoRadioTower1FGentlemanVirgilText_KeepMyPromise
	promptbutton
	getstring STRING_BUFFER_4, .expncardname
	scall .receiveitem
	setflag ENGINE_EXPN_CARD
	setevent EVENT_BEAT_GENTLEMAN_VIRGIL
.GotExpnCard:
	writetext KantoRadioTower1FGentlemanVirgilText_GotExpnCard
	waitbutton
	closetext
	end

.receiveitem:
	jumpstd ReceiveItemScript
	end

.expncardname
	db "EXPN CARD@"

KantoRadioTower1FSuperNerd2Script:
	faceplayer
	opentext
	checkflag ENGINE_EXPN_CARD
	iftrue .GotExpnCard
	writetext KantoRadioTower1FSuperNerd2Text
	waitbutton
	closetext
	end

.GotExpnCard:
	writetext KantoRadioTower1FSuperNerd2Text_GotExpnCard
	waitbutton
	closetext
	end

KantoRadioTower1FDirectory:
	jumptext KantoRadioTower1FDirectoryText

KantoRadioTower1FPokeFluteSign:
	jumptext KantoRadioTower1FPokeFluteSignText

KantoRadioTower1FReceptionistText:
	text "Welcome!"
	line "Feel free to look"

	para "around anywhere on"
	line "this floor."
	done

KantoRadioTower1FOfficerText:
	text "Ever since JOHTO's"
	line "RADIO TOWER was"

	para "taken over by a"
	line "criminal gang, we"

	para "have had to step"
	line "up our security."
	done

KantoRadioTower1FSuperNerd1Text:
	text "Many people are"
	line "hard at work here"

	para "in the RADIO"
	line "TOWER."

	para "They must be doing"
	line "their best to put"
	cont "on good shows."
	done

KantoRadioTower1FGentlemanVirgilText_Intro:
	text "Oh, you travelled"
	line "all the way from"
	cont "JOHTO!"

	para "All my efforts to"
	line "start this station"

	para "should be for you"
	line "to enjoy as well."

	para "If you beat me, I"
	line "will tell you how"
	cont "to tune in!"
	done

KantoRadioTower1FGentlemanVirgilText_Win:
	para "Wow! You beat me"
	line "fair and square!"
	done
	
KantoRadioTower1FGentlemanVirgilText_Loss:
	para "Well, you should"
	line "train more!"

KantoRadioTower1FGentlemanVirgilText_KeepMyPromise:
	text "Ah! It has been"
	line "quite a while"

	para "since I got to"
	line "fight like this!"

	para "You remind me of"
	line "myself when I was"
	cont "young..."

	para "But well! I made a"
	line "promise to keep."

	para "Please take this"
	line "as my thanks."
	done

KantoRadioTower1FGentlemanVirgilText_GotExpnCard:
	text "With that thing,"
	line "you can tune into"

	para "the radio programs"
	line "here in KANTO."

	para "Gahahahaha!"
	done

KantoRadioTower1FSuperNerd2Text:
	text "Hey there!"

	para "I am the super"
	line "MUSIC DIRECTOR!"

	para "Huh? Your #GEAR"
	line "can't tune into my"

	para "music programs."
	line "How unfortunate!"

	para "If you get an EXPN"
	line "CARD upgrade, you"

	para "can tune in. You'd"
	line "better get one!"
	done

KantoRadioTower1FSuperNerd2Text_GotExpnCard:
	text "Hey there!"

	para "I am the super"
	line "MUSIC DIRECTOR!"

	para "I'm responsible"
	line "for the gorgeous"

	para "melodies that go"
	line "out over the air."

	para "Don't be square."
	line "Grab your music"
	cont "off the air!"
	done

KantoRadioTower1FDirectoryText:
	text "1F RECEPTION"
	line "2F SALES"

	para "3F PERSONNEL"
	line "4F PRODUCTION"

	para "5F DIRECTOR'S"
	line "   OFFICE"
	done

KantoRadioTower1FPokeFluteSignText:
	text "Perk Up #MON"
	line "with Mellow Sounds"

	para "of the # FLUTE"
	line "on CHANNEL 20"
	done

KantoRadioTower1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2, 7, SAFFRON_CITY, 16
	warp_event  3, 7, SAFFRON_CITY, 16
	warp_event 15, 0, KANTO_RADIO_TOWER_2F, 1

	def_coord_events

	def_bg_events
	bg_event 11,  0, BGEVENT_READ, KantoRadioTower1FDirectory
	bg_event  5,  0, BGEVENT_READ, KantoRadioTower1FPokeFluteSign

	def_object_events
	object_event  6,  6, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, KantoRadioTower1FReceptionistScript, -1
	object_event 14,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, KantoRadioTower1FOfficerScript, -1
	object_event  1,  3, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, KantoRadioTower1FSuperNerd1Script, -1
	object_event  9,  1, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, KantoRadioTower1FGentlemanVirgilScript, -1
	object_event 14,  6, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, KantoRadioTower1FSuperNerd2Script, -1
