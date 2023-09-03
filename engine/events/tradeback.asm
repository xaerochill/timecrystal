; Fun fact, the 'trade' part of a trade isn't checked to evolve a Pokemon, It seems that just the trade animation and the link state are enough
; No Pokemon is ever removed from or added to your party using this code because of that fact

Trader::
    ld hl, TraderText
    call PrintText
    call YesNoBox
    ld hl, TraderCanceledText
    jr c, .done
    
    ; Select givemon from party
    ld b, PARTYMENUACTION_GIVE_MON
    farcall SelectTradeOrDayCareMon
    ld a, [wCurPartyMon]
    ld hl, TraderCanceledText
    jr c, .done
    
    ld hl, NPCTradeCableText
    call PrintText
    
    call TradeWithTrader
    call RestartMapMusic
    
    ld hl, TraderCompleteText
    call PrintText
    ret
    .done
    call PrintText
    ret
    ;Loads the appropriate data to prefor the trade animation,
    TradeWithTrader:
    ;Sets the link state to trading so that evolution is possible.
    ld a, LINK_TRADECENTER
    ld [wLinkMode], a
    
    ;Establish names of trading trainers
    ld hl, wPlayerName
    ld de, wPlayerTrademonSenderName
    ld bc, NAME_LENGTH
    call CopyBytes
    
    ld hl, .Trader
    ld de, wOTTrademonSenderName
    ld bc, NAME_LENGTH
    call CopyBytes
    .Trader:
    db "TRADER@"
    
    ;Establish mon's species
    ld a, [wCurPartyMon]
    ld hl, wPartySpecies
    ld b, 0
    ld c, a
    add hl, bc
    ld a, [hl]
    ld [wPlayerTrademonSpecies], a
    ld [wOTTrademonSpecies], a
    
    
    ;Establish mon's ID number
    ld hl, wPartyMon1ID
    ld a, [wCurPartyMon]
    call GetPartyLocation
    ld a, [hli]
    ld [wPlayerTrademonID], a
    ld [wOTTrademonID], a
    ld a, [hl]
    ld [wPlayerTrademonID + 1], a
    ld [wOTTrademonID + 1], a
    
    
    ; Correctly display Pokemon Shiny Status on the trade screen.
    ld hl, wPartyMon1DVs
    ld a, [wCurPartyMon]
    call GetPartyLocation
    ld a, [hli]
    ld [wPlayerTrademonDVs], a
    ld [wOTTrademonDVs], a
    ld a, [hl]
    ld [wPlayerTrademonDVs + 1], a
    ld [wOTTrademonDVs + 1], a 
    
    ;Establish mon's OT's name
    ld a, [wCurPartyMon]
    ld hl, wPartyMonOTs
    call SkipNames
    ld de, wPlayerTrademonOTName
    ld bc, NAME_LENGTH
    call CopyBytes
    
    ld hl, wPartyMonOTs
    ld de, wOTTrademonOTName
    ld bc, NAME_LENGTH
    call CopyBytes
    
    ;Makes it so that pressing B will not cancel the evolution, standard for trade based evolution
    ld a, 1
    ld [wForceEvolution], a
    
    ;run the trade animation/ evolves the mon if applicable
    call DisableSpriteUpdates
    ; wTradeDialog aliases wFrameCounter, which TradeAnimation uses
    ld a, [wTradeDialog]
    push af
    predef TradeAnimation
    callfar EvolvePokemon
    pop af
    ld [wTradeDialog], a
    call ReturnToMapWithSpeechTextbox
    
    ;Put's the link mode back to not linked, battles don't work right otherwise.
    ld a, LINK_NULL
    ld [wLinkMode], a
    ret
    
    TraderText::
    text "Hello there! Did"
    line "you know that"
    cont "some #MON can"
    line "evolve by trade?"

    para "Let's try it out!"
    line "I will trade the"
    cont "same #MON back"
    cont "to you."
    
    para "Would you like to"
    line "trade?"
    done
    
    TraderCanceledText::
    text "Oh, ok then."
    
    para "Come back if you"
    line "change your mind."
    done
    
    TraderCompleteText::
    text "And... Done!"
    
    para "I hope that"
    line "was helpful!"
    done