Music_Route37: ; ee94b
	channel_count 4
	channel 1, Music_Route37_Ch1
	channel 2, Music_Route37_Ch2
	channel 3, Music_Route37_Ch3
	channel 4, Music_Route37_Ch4
; ee957

Music_Route37_Ch1: ; ee957
	tempo 144
	volume 7, 7
	duty_cycle $3
	pitch_offset $0002
	vibrato 16, 2, 2
	note_type 12, 11, 3
	rest 16
	rest 16
Music_Route37_branch_ee969: ; ee969
	volume_envelope 11, 3
	rest 2
	octave 2
	note F#, 2
	note B_, 2
	octave 3
	note E_, 2
	volume_envelope 11, 7
	note D#, 10
	volume_envelope 11, 3
	note E_, 4
	note D#, 4
	note C#, 4
	octave 2
	note B_, 2
	octave 3
	note D#, 3
	octave 2
	note B_, 1
	volume_envelope 11, 7
	note F#, 8
	note B_, 8
	octave 3
	note B_, 12
	volume_envelope 11, 3
	rest 2
	octave 2
	note F#, 2
	note B_, 2
	octave 3
	note E_, 2
	volume_envelope 11, 7
	note D#, 10
	octave 2
	note A_, 4
	octave 3
	note C#, 4
	note E_, 4
	note A_, 2
	note F#, 3
	note A_, 1
	note B_, 6
	octave 2
	note B_, 2
	octave 3
	note D#, 2
	note F#, 2
	note B_, 2
	note A_, 4
	note F#, 4
	note E_, 2
	note D#, 4
	stereo_panning FALSE, TRUE
Music_Route37_branch_ee9a5: ; ee9a5
	sound_call Music_Route37_branch_ee9da
	octave 3
	note C#, 4
	sound_loop 2, Music_Route37_branch_ee9a5
	sound_call Music_Route37_branch_ee9e9
	octave 3
	note F#, 4
	sound_call Music_Route37_branch_ee9e9
	octave 3
	note F#, 4
	sound_call Music_Route37_branch_ee9da
	octave 3
	note E_, 4
	sound_call Music_Route37_branch_ee9da
	octave 3
	note G#, 4
	sound_call Music_Route37_branch_ee9e9
	octave 4
	note D#, 4
	sound_call Music_Route37_branch_ee9e9
	octave 3
	note F_, 4
	stereo_panning TRUE, TRUE
	sound_call Music_Route37_branch_ee9e9
	rest 4
	sound_call Music_Route37_branch_ee9e9
	rest 4
	sound_loop 0, Music_Route37_branch_ee969
; ee9da

Music_Route37_branch_ee9da: ; ee9da
	volume_envelope 12, 2
	octave 2
	note A_, 2
	note A_, 1
	note A_, 1
	note A_, 2
	note A_, 1
	note A_, 1
	note A_, 1
	note A_, 1
	note A_, 2
	volume_envelope 11, 7
	sound_ret
; ee9e9

Music_Route37_branch_ee9e9: ; ee9e9
	volume_envelope 12, 2
	octave 2
	note B_, 2
	note B_, 1
	note B_, 1
	note B_, 2
	note B_, 1
	note B_, 1
	note B_, 1
	note B_, 1
	note B_, 2
	volume_envelope 11, 7
	sound_ret
; ee9f8

Music_Route37_Ch2: ; ee9f8
	duty_cycle $3
	vibrato 28, 1, 2
	note_type 12, 12, 2
	octave 2
	note B_, 2
	note_type 12, 12, 1
	note B_, 1
	note B_, 1
	volume_envelope 12, 2
	note B_, 2
	volume_envelope 12, 1
	note B_, 1
	note B_, 1
	note B_, 1
	note B_, 1
	volume_envelope 12, 2
	note B_, 6
	note B_, 2
	volume_envelope 12, 1
	note B_, 1
	note B_, 1
	volume_envelope 12, 2
	note B_, 2
	volume_envelope 12, 1
	note B_, 1
	note B_, 1
	note B_, 1
	note B_, 1
	volume_envelope 12, 2
	note B_, 2
Music_Route37_branch_eea24: ; eea24
	sound_call Music_Route37_branch_eeab7
	volume_envelope 12, 6
	octave 4
	note C#, 4
	octave 3
	note B_, 4
	note A_, 4
	note E_, 4
	volume_envelope 11, 0
	note F#, 8
	volume_envelope 11, 7
	note F#, 8
	volume_envelope 12, 7
	note D#, 12
	sound_call Music_Route37_branch_eeab7
	volume_envelope 12, 7
	octave 4
	note C#, 4
	octave 3
	note B_, 4
	octave 4
	note C#, 4
	note E_, 4
	volume_envelope 11, 0
	note D#, 16
	volume_envelope 11, 0
	note D#, 8
	volume_envelope 11, 7
	note D#, 8
	volume_envelope 12, 4
	rest 4
	octave 3
	note A_, 3
	octave 4
	note E_, 1
	note A_, 4
	note G#, 4
	volume_envelope 10, 0
	note C#, 6
	note D#, 6
	note E_, 4
	volume_envelope 12, 3
	note F#, 3
	note E_, 1
	volume_envelope 11, 0
	note D#, 6
	volume_envelope 11, 7
	note D#, 6
	volume_envelope 12, 3
	octave 3
	note B_, 3
	note F#, 1
	volume_envelope 11, 0
	octave 4
	note D#, 6
	volume_envelope 11, 7
	octave 4
	note D#, 6
	volume_envelope 12, 4
	rest 4
	octave 3
	note A_, 3
	octave 4
	note E_, 1
	note A_, 4
	note G#, 4
	volume_envelope 11, 0
	note C#, 6
	note D#, 6
	note E_, 4
	volume_envelope 12, 3
	note F#, 3
	note D#, 1
	volume_envelope 11, 0
	note B_, 6
	volume_envelope 11, 7
	note B_, 6
	volume_envelope 12, 3
	note B_, 3
	note F#, 1
	volume_envelope 11, 0
	octave 5
	note D#, 6
	volume_envelope 11, 7
	octave 5
	note D#, 6
	volume_envelope 12, 2
	octave 3
	note F#, 2
	note F#, 1
	note F#, 1
	note F#, 2
	volume_envelope 12, 1
	note F#, 1
	note F#, 1
	note F#, 1
	note F#, 1
	volume_envelope 12, 2
	note F#, 6
	note F#, 2
	note F#, 1
	note F#, 1
	note F#, 2
	volume_envelope 12, 1
	note F#, 1
	note F#, 1
	note F#, 1
	note F#, 1
	volume_envelope 12, 2
	note F#, 2
	sound_loop 0, Music_Route37_branch_eea24
; eeab7

Music_Route37_branch_eeab7: ; eeab7
	volume_envelope 12, 7
	octave 3
	note F#, 4
	volume_envelope 11, 0
	note B_, 5
	volume_envelope 11, 7
	note B_, 5
	volume_envelope 12, 3
	note F#, 2
	note F#, 2
	note B_, 2
	sound_ret
; eeac7

Music_Route37_Ch3: ; eeac7
	stereo_panning TRUE, FALSE
	note_type 12, 1, 4
Music_Route37_branch_eeacc: ; eeacc
	octave 2
	note F#, 2
	rest 6
	sound_loop 4, Music_Route37_branch_eeacc
Music_Route37_branch_eead3: ; eead3
	sound_call Music_Route37_branch_eeb32
	note A_, 2
	octave 3
	note C#, 2
	octave 2
	note G#, 2
	note B_, 2
	note F#, 2
	note A_, 2
	note F#, 2
	note E_, 2
Music_Route37_branch_eeae0: ; eeae0
	note D#, 2
	note F#, 2
	sound_loop 4, Music_Route37_branch_eeae0
	sound_call Music_Route37_branch_eeb32
	sound_call Music_Route37_branch_eeb32
	note A_, 2
	octave 3
	note C#, 2
	octave 2
	note G#, 2
	note B_, 2
	note F#, 2
	note A_, 2
	octave 3
	note C#, 2
	octave 2
	note A_, 2
	sound_call Music_Route37_branch_eeb32
Music_Route37_branch_eeafb: ; eeafb
	octave 2
	note B_, 2
	octave 3
	note D#, 2
	sound_loop 4, Music_Route37_branch_eeafb
Music_Route37_branch_eeb03: ; eeb03
	octave 2
	note A_, 2
	octave 3
	note C#, 2
	sound_loop 7, Music_Route37_branch_eeb03
	note E_, 2
	note C#, 2
	sound_call Music_Route37_branch_eeb3c
Music_Route37_branch_eeb10: ; eeb10
	octave 2
	note B_, 2
	octave 3
	note F#, 2
	sound_loop 4, Music_Route37_branch_eeb10
Music_Route37_branch_eeb18: ; eeb18
	octave 2
	note A_, 2
	octave 3
	note C#, 2
	sound_loop 7, Music_Route37_branch_eeb18
	note E_, 2
	note C#, 2
	sound_call Music_Route37_branch_eeb3c
	sound_call Music_Route37_branch_eeb32
Music_Route37_branch_eeb28: ; eeb28
	note F#, 2
	rest 6
	sound_loop 4, Music_Route37_branch_eeb28
	sound_loop 0, Music_Route37_branch_eead3
; eeb32

Music_Route37_branch_eeb32: ; eeb32
	octave 2
	note F#, 2
	note B_, 2
	note F#, 2
	note B_, 2
	note F#, 2
	note B_, 2
	note F#, 2
	note B_, 2
	sound_ret
; eeb3c

Music_Route37_branch_eeb3c: ; eeb3c
	octave 2
	note B_, 2
	octave 3
	note D#, 2
	octave 2
	note B_, 2
	octave 3
	note D#, 2
	octave 2
	note B_, 2
	octave 3
	note D#, 2
	octave 2
	note B_, 2
	octave 3
	note D#, 2
	sound_ret
; eeb4d

Music_Route37_Ch4: ; eeb4d
	stereo_panning FALSE, TRUE
	toggle_noise $0
Music_Route37_branch_eeb51: ; eeb51
	drum_speed 12
	sound_call Music_Route37_branch_eeb6b
	drum_note 3, 1
	drum_note 4, 1
	drum_note 4, 1
	drum_note 3, 1
	sound_call Music_Route37_branch_eeb6b
	drum_speed 6
	drum_note 4, 1
	drum_note 4, 1
	drum_note 4, 1
	drum_note 4, 1
	drum_note 4, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	sound_loop 0, Music_Route37_branch_eeb51
; eeb6b

Music_Route37_branch_eeb6b: ; eeb6b
	drum_note 3, 2
	drum_note 4, 1
	drum_note 4, 1
	drum_note 3, 2
	drum_note 4, 1
	drum_note 4, 1
	drum_note 3, 2
	drum_note 4, 1
	drum_note 4, 1
	sound_ret
; eeb75

Music_Route37Night:
	channel_count 4
	channel 1, Music_Route37Night_Ch1
	channel 2, Music_Route37Night_Ch2
	channel 3, Music_Route37Night_Ch3
	channel 4, Music_Route37Night_Ch4

; ============================================================================================================
; ============================================================================================================
Music_Route37Night_Ch1:
	tempo 150
	volume 7, 7
	duty_cycle $2
	pitch_offset $0002
	vibrato 16, 2, 1
	note_type 12, 11, 3
	rest 16
	rest 16
	
	sound_loop 0, Music_Route37_branch_ee969

; ============================================================================================================
Music_Route37Night_Ch2:
	duty_cycle $2
	vibrato 28, 1, 1
	note_type 12, 12, 2
	octave 2
	note B_, 2
	note_type 12, 12, 1
	note B_, 1
	note B_, 1
	volume_envelope 12, 2
	note B_, 2
	volume_envelope 12, 1
	note B_, 1
	note B_, 1
	note B_, 1
	note B_, 1
	volume_envelope 12, 2
	note B_, 6
	note B_, 2
	volume_envelope 12, 1
	note B_, 1
	note B_, 1
	volume_envelope 12, 2
	note B_, 2
	volume_envelope 12, 1
	note B_, 1
	note B_, 1
	note B_, 1
	note B_, 1
	volume_envelope 12, 2
	note B_, 2
	
	sound_loop 0, Music_Route37_branch_eea24

; ============================================================================================================
Music_Route37Night_Ch3:
	stereo_panning TRUE, FALSE
	note_type 12, 1, 2

	sound_loop 0, Music_Route37_branch_eeacc

; ============================================================================================================

Music_Route37Night_Ch4: ; eeb4d
	stereo_panning FALSE, TRUE
	toggle_noise 6
	sound_loop 0, Music_Route37_branch_eeb51
