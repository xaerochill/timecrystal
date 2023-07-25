	object_const_def
	const CINNABARLAB_FOSSILSCIENTIST
	
CinnabarLabFossilRoom_MapScripts:
	def_scene_scripts

	def_callbacks

	FossilScientist:
    faceplayer
    opentext
    checkevent EVENT_GAVE_SCIENTIST_OLD_AMBER
    iftrue .GiveAerodactyl
    checkevent EVENT_GAVE_SCIENTIST_DOME_FOSSIL
    iftrue .GiveKabuto
    checkevent EVENT_GAVE_SCIENTIST_HELIX_FOSSIL
    iftrue .GiveOmanyte
    writetext FossilScientistIntroText
    waitbutton
    loadmenu .MoveMenuHeader
    verticalmenu
    closewindow
    ifequal REVIVE_OLD_AMBER, .OldAmber
    ifequal REVIVE_DOME_FOSSIL, .DomeFossil
    ifequal REVIVE_LORD_HELIX, .HelixFossil
    sjump .No
 
.OldAmber
    checkitem OLD_AMBER
    iffalse .No
    getmonname STRING_BUFFER_3, AERODACTYL
    writetext FossilScientistMonText
    promptbutton
    setevent EVENT_GAVE_SCIENTIST_OLD_AMBER
    takeitem OLD_AMBER
    writetext FossilScientistGiveText
    waitbutton
    sjump .GaveScientistFossil
 
.DomeFossil:
    checkitem DOME_FOSSIL
    iffalse .No
    getmonname STRING_BUFFER_3, KABUTO
    writetext FossilScientistMonText
    promptbutton
    setevent EVENT_GAVE_SCIENTIST_DOME_FOSSIL
    takeitem DOME_FOSSIL
    writetext FossilScientistGiveText
    waitbutton
    sjump .GaveScientistFossil
 
.HelixFossil:
    checkitem HELIX_FOSSIL
    iffalse .No
    getmonname STRING_BUFFER_3, OMANYTE
    writetext FossilScientistMonText
    promptbutton
    setevent EVENT_GAVE_SCIENTIST_HELIX_FOSSIL
    takeitem HELIX_FOSSIL
    writetext FossilScientistGiveText
    waitbutton
    sjump .GaveScientistFossil
 
.No
    writetext FossilScientistNoText
    waitbutton
    closetext
    end
    
.GaveScientistFossil:
    writetext FossilScientistTimeText
    waitbutton
    closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	playsound SFX_WARP_TO
	waitsfx
	pause 35
    sjump FossilScientist
 
.GiveAerodactyl:
    readvar VAR_PARTYCOUNT
    ifequal PARTY_LENGTH, .NoRoom
    clearevent EVENT_GAVE_SCIENTIST_OLD_AMBER
    writetext FossilScientistDoneText
    promptbutton
    getmonname STRING_BUFFER_3, AERODACTYL
    writetext FossilScientistReceiveText
    playsound SFX_CAUGHT_MON
    waitsfx
    waitbutton
    givepoke AERODACTYL, 5
    closetext
    end
 
.GiveKabuto:
    readvar VAR_PARTYCOUNT
    ifequal PARTY_LENGTH, .NoRoom
    clearevent EVENT_GAVE_SCIENTIST_DOME_FOSSIL
    writetext FossilScientistDoneText
    promptbutton
    getmonname STRING_BUFFER_3, KABUTO
    writetext FossilScientistReceiveText
    playsound SFX_CAUGHT_MON
    waitsfx
    waitbutton
    givepoke KABUTO, 5
    closetext
    end
 
.GiveOmanyte:
    readvar VAR_PARTYCOUNT
    ifequal PARTY_LENGTH, .NoRoom
    clearevent EVENT_GAVE_SCIENTIST_HELIX_FOSSIL
    writetext FossilScientistDoneText
    promptbutton
    getmonname STRING_BUFFER_3, OMANYTE
    writetext FossilScientistReceiveText
    playsound SFX_CAUGHT_MON
    waitsfx
    waitbutton
    givepoke OMANYTE, 5
    closetext
    end

.NoRoom:
	writetext FossilScientistPartyFullText
	waitbutton
	closetext
	end

.MoveMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 15, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "OLD AMBER@"
	db "DOME FOSSIL@"
	db "HELIX FOSSIL@"
	db "CANCEL@"

FossilScientistIntroText:
	text "Hiya!"

	para "I am important"
	line "doctor!"

	para "I study here rare"
	line "#MON fossils!"

	para "You! Have you a"
	line "fossil for me?"
	done

FossilScientistNoText:
	text "No! Is too bad!"

	para "You come again!"
	done

FossilScientistPartyFullText:
	text "No! Is too bad!"

	para "Your party is"
	line "already full!"
	done

FossilScientistTimeText:
	text "I take a little"
	line "time!"

	para "You go for walk a"
	line "little while!"
	done

FossilScientistDoneText:
	text "Where were you?"

	para "Your fossil is"
	line "back to life!"
	done

FossilScientistMonText:
    text "Oh! That is"
    line "a fossil!"
 
    para "It is fossil of"
    line "@"
    text_ram wStringBuffer3
    text ", a"

	para "#MON that is"
    line "already extinct!"
 
    para "My Resurrection"
    line "Machine will make"
 
    para "that #MON live"
    line "again!"
    done

FossilScientistGiveText:
	text "So! You hurry and"
	line "give me that!"

	para "<PLAYER> handed"
	line "over the fossil."
	done

FossilScientistReceiveText:
    text "<PLAYER> received"
    line "@"
    text_ram wStringBuffer3
    text "!"
    done

CinnabarLabFossilRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 8, 7, CINNABAR_LAB, 5
	warp_event 9, 7, CINNABAR_LAB, 5
	
	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  1, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, FossilScientist, -1
