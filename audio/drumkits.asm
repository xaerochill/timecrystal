Drumkits: ; e8e52
	dw Drumkit0
	dw Drumkit1
	dw Drumkit2
	dw Drumkit3
	dw Drumkit4
	dw Drumkit5
	dw Drumkit0S ;6
	dw Drumkit1S ;7
	dw Drumkit_Empty ;8
	dw Drumkit3S ;9
	dw Drumkit4S ;10
	dw Drumkit5S ;11
; e8e5e

Drumkit_Empty:
Drumkit0: ; e8e5e
	dw Drum00    ; rest
	dw Snare1    ; c
	dw Snare2    ; c#
	dw Snare3    ; d
	dw Snare4    ; d#
	dw Drum05    ; e
	dw Triangle1 ; f
	dw Triangle2 ; f#
	dw HiHat1    ; g
	dw Snare5    ; g#
	dw Snare6    ; a
	dw Snare7    ; a#
	dw HiHat2    ; b
Drumkit1: ; e8e78
	dw Drum00
	dw HiHat1    ;C_
	dw Snare5    ;C#
	dw Snare6    ;D_
	dw Snare7    ;D#
	dw HiHat2    ;E_
	dw HiHat3    ;F_
	dw Snare8    ;F#
	dw Triangle3 ;G_
	dw Triangle4 ;G#
	dw Snare9    ;A_
	dw Snare10   ;A#
	dw Snare11   ;B_
Drumkit2: ; e8e92
	dw Drum00
	dw Snare1    ;C_
	dw Snare9    ;C#
	dw Snare10   ;D_
	dw Snare11   ;D#
	dw Kick1     ;E_
	dw Triangle1 ;F_
	dw Triangle2 ;F#
	dw HiHat1    ;G_
	dw Snare5    ;G#
	dw Snare6    ;A_
	dw Snare7    ;A#
	dw HiHat2    ;B_
Drumkit3:
	dw Drum00
	dw Snare12   ;C_
	dw Snare13   ;C#
	dw Snare14   ;D_
	dw Kick1     ;D#
	dw Triangle5 ;E_
	dw Drum20    ;F_
	dw Drum27    ;F#
	dw Drum28    ;G_
	dw Drum29    ;G#
	dw Drum20    ;A_
	dw Kick2     ;A#
	dw Crash2    ;B_
Drumkit4: ; e8ec6
	dw Drum00
	dw Drum20
	dw Snare13
	dw Snare14
	dw Kick1
	dw Drum33
	dw Triangle5
	dw Drum35
	dw Drum31
	dw Drum32
	dw Drum36
	dw Kick2
	dw Crash1
Drumkit5: ; e8ee0
	dw Drum00
	dw Snare9    ;C_
	dw Snare10   ;C#
	dw Snare11   ;D_
	dw Drum27    ;D#
	dw Drum28    ;E_
	dw Drum29    ;F_
	dw Drum05    ;F#
	dw Triangle1 ;G_
	dw Crash1    ;G#
	dw Snare14   ;A_
	dw Snare13   ;A#
	dw Kick2     ;B_
Drumkit0S: ;6
	dw Drum00   
	dw Snare2
	dw Snare3   
	dw Snare4 
	dw Snare4_Soft 
	dw Drum05  
	dw Triangle1_Soft
	dw Triangle2_Soft
	dw HiHat1_Soft
	dw Snare5_Soft
	dw Snare6_Soft
	dw Snare7_Soft
	dw HiHat1
Drumkit1S: ;7
	dw Drum00
	dw HiHat1_Soft
	dw Snare5_Soft
	dw Snare6_Soft
	dw Snare7_Soft
	dw HiHat2_Soft
	dw HiHat3_Soft
	dw Snare8_Soft
	dw Triangle3_Soft
	dw Triangle4_Soft
	dw Snare9_Soft
	dw Snare10_Soft
	dw Snare11_Soft
Drumkit3S: ; 8
	dw Drum00
	dw Snare12_Soft
	dw Snare13_Soft
	dw Snare14_Soft
	dw Kick1_Soft
	dw Triangle5_Soft
	dw Snare5_Soft
	dw Drum27_Soft
	dw Drum28_Soft
	dw Drum29_Soft
	dw Snare9_Soft
	dw Kick2_Soft
	dw Crash2_Soft
Drumkit4S: ; e8ec6
	dw Drum00
	dw Drum20
	dw Snare13_Soft
	dw Snare14_Soft
	dw Kick1_Soft
	dw Drum33_Soft
	dw Triangle5_Soft
	dw Drum35_Soft
	dw Drum31_Soft
	dw Drum32_Soft
	dw Drum36_Soft
	dw Kick2_Soft
	dw Crash1
Drumkit5S: ; 9
	dw Drum00
	dw Snare9_Soft ;C_
	dw Snare10_Soft ;C#
	dw Snare11_Soft ;D_
	dw Drum27_Soft ;D#
	dw Drum28_Soft ;E_
	dw Drum29_Soft  ;F_
	dw Drum05       ;F#
	dw Triangle1_Soft ;G_
	dw Crash1 ;G#
	dw Snare14_Soft ;A_
	dw Snare13_Soft ;A#
	dw Kick2_Soft ;B_
; e8efa

Drum00: ; e8efa
; unused
	sound_ret
; e8efe

Snare1: ; e8efe
	noise_note 32, 12, 1, 51
	sound_ret
; e8f02

Snare2: ; e8f02
	noise_note 32, 11, 1, 51
	sound_ret
; e8f06

Snare3: ; e8f06
	noise_note 32, 10, 1, 51
	sound_ret
; e8f0a

Snare4: ; e8f0a
	noise_note 32, 8, 1, 51
	sound_ret
; e8f0e

Snare5: ; e8f30
	noise_note 32, 8, 2, 35
	sound_ret
; e8f34

Snare6: ; e8f34
	noise_note 32, 8, 2, 37
	sound_ret
; e8f38

Snare7: ; e8f38
	noise_note 32, 8, 2, 38
	sound_ret
; e8f3c

Snare8: ; e8f44
	noise_note 32, 10, 2, 80
	sound_ret
; e8f48

Snare9: ; e8f56
	noise_note 32, 9, 1, 34
	sound_ret
; e8f5a

Snare10: ; e8f5a
	noise_note 32, 7, 1, 34
	sound_ret
; e8f5e

Snare11: ; e8f5e
	noise_note 32, 6, 1, 34
	sound_ret
; e8f62

Snare12: ; e8f67
	noise_note 32, 9, 1, 51
	sound_ret
; e8f6b

Snare13: ; e8f6b
	noise_note 32, 5, 1, 50
	sound_ret
; e8f6f

Snare14: ; e8f6f
	noise_note 32, 8, 1, 49
	sound_ret
; e8f73

Drum05: ; e8f0e
	noise_note 39, 8, 4, 55
	noise_note 38, 8, 4, 54
	noise_note 37, 8, 3, 53
	noise_note 36, 8, 3, 52
	noise_note 35, 8, 2, 51
	noise_note 34, 8, 1, 50
	sound_ret
; e8f21

Triangle1: ; e8f21
	noise_note 32, 5, 1, 42
	sound_ret
; e8f25

Triangle2: ; e8f25
	noise_note 33, 4, 1, 43
	noise_note 32, 6, 1, 42
	sound_ret
; e8f2c

HiHat1: ; e8f2c
	noise_note 32, 8, 1, 16
	sound_ret
; e8f30

HiHat2: ; e8f3c
	noise_note 32, 10, 1, 16
	sound_ret
; e8f40

HiHat3: ; e8f40
	noise_note 32, 10, 2, 17
	sound_ret
; e8f44

Triangle3: ; e8f48
	noise_note 32, 10, 1, 24
	noise_note 32, 3, 1, 51
	sound_ret
; e8f4f

Triangle4: ; e8f4f
	noise_note 34, 9, 1, 40
	noise_note 32, 7, 1, 24
	sound_ret
; e8f56

Drum20: ; e8f62
	noise_note 32, 1, 1, 17
	sound_ret
; e8f66

Kick1: ; e8f73
	noise_note 32, 8, 8, 107
	noise_note 32, 7, 1, 0
	sound_ret
; e8f7a

Triangle5: ; e8f7a
	noise_note 48, 9, 1, 24
	sound_ret
; e8f7e

Drum27: ; e8f7e
	noise_note 39, 9, 2, 16
	sound_ret
; e8f82

Drum28: ; e8f82
	noise_note 51, 9, 1, 0
	noise_note 51, 1, 1, 0
	sound_ret
; e8f89

Drum29: ; e8f89
	noise_note 51, 9, 1, 17
	noise_note 51, 1, 1, 0
	sound_ret
; e8f90

Crash1: ; e8f90
	noise_note 51, 8, 8, 21
	noise_note 32, 6, 5, 18
	sound_ret
; e8f97

Crash2: ; e8fa9
	noise_note 32, 8, 4, 18
	sound_ret
; e8fad

Drum31: ; e8f97
	noise_note 51, 5, 1, 33
	noise_note 51, 1, 1, 17
	sound_ret
; e8f9e

Drum32: ; e8f9e
	noise_note 51, 5, 1, 80
	noise_note 51, 1, 1, 17
	sound_ret
; e8fa5

Drum33: ; e8fa5
	noise_note 32, 10, 1, 49
	sound_ret
; e8fa9

Drum35: ; e8fad
	noise_note 51, 8, 1, 0
	noise_note 51, 1, 1, 0
	sound_ret
; e8fb4

Drum36: ; e8fb4
	noise_note 51, 8, 1, 33
	noise_note 51, 1, 1, 17
	sound_ret
; e8fbb

Kick2: ; e8fbb
	noise_note 32, 10, 8, 107
	noise_note 32, 7, 1, 0
	sound_ret
; e8fc2

;Softer Drumkits

Snare12_Soft:
	noise_note 32, 8, 1, 51
	sound_ret

Snare13_Soft:
	noise_note 32, 4, 1, 50
	sound_ret

Snare14_Soft:
	noise_note 32, 7, 1, 49
	sound_ret

Kick1_Soft:
	noise_note 32, 7, 8, 107
	noise_note 32, 6, 1, 0
	sound_ret

Triangle5_Soft:
	noise_note 48, 8, 1, 24
	sound_ret

Drum27_Soft:
	noise_note 39, 8, 2, 16
	sound_ret

Drum28_Soft:
	noise_note 51, 8, 1, 0
	noise_note 51, 1, 1, 0
	sound_ret

Drum29_Soft:
	noise_note 51, 8, 1, 17
	noise_note 51, 1, 1, 0
	sound_ret

Drum31_Soft: ; e8f97
	noise_note 51, 4, 1, 33
	noise_note 51, 1, 1, 17
	sound_ret
; e8f9e

Drum32_Soft: ; e8f9e
	noise_note 51, 4, 1, 80
	noise_note 51, 1, 1, 17
	sound_ret
; e8fa5

Drum33_Soft: ; e8fa5
	noise_note 32, 9, 1, 49
	sound_ret
; e8fa9

Drum35_Soft: ; e8fad
	noise_note 51, 7, 1, 0
	noise_note 51, 1, 1, 0
	sound_ret
; e8fb4

Drum36_Soft: ; e8fb4
	noise_note 51, 7, 1, 33
	noise_note 51, 1, 1, 17
	sound_ret

Snare4_Soft:
	noise_note 32, 7, 1, 51
	sound_ret

Snare5_Soft:
	noise_note 32, 7, 2, 35
	sound_ret

Snare6_Soft:
	noise_note 32, 7, 2, 37
	sound_ret

Snare7_Soft:
	noise_note 32, 7, 2, 38
	sound_ret

Snare8_Soft:
	noise_note 32, 9, 2, 80
	sound_ret

Snare9_Soft:
	noise_note 32, 8, 1, 34
	sound_ret

Snare10_Soft:
	noise_note 32, 6, 1, 34
	sound_ret

Snare11_Soft:
	noise_note 32, 5, 1, 34
	sound_ret

Kick2_Soft:
	noise_note 32, 9, 8, 107
	noise_note 32, 6, 1, 0
	sound_ret

Crash2_Soft:
	noise_note 32, 7, 4, 18
	sound_ret

Triangle1_Soft:
	noise_note 32, 6, 1, 42
	sound_ret

Triangle2_Soft:
	noise_note 33, 3, 1, 43
	noise_note 32, 5, 1, 42
	sound_ret

Triangle3_Soft:
	noise_note 32, 9, 1, 24
	noise_note 32, 2, 1, 51
	sound_ret

Triangle4_Soft:
	noise_note 34, 8, 1, 40
	noise_note 32, 6, 1, 24
	sound_ret

HiHat1_Soft:
	noise_note 32, 7, 1, 16
	sound_ret

HiHat2_Soft:
	noise_note 32, 9, 1, 16
	sound_ret

HiHat3_Soft:
	noise_note 32, 9, 2, 17
	sound_ret
