;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.0.1 (7-Feb-2021)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_Dive:
	channel_count 4
	channel 1, Music_Dive_Ch1
	channel 2, Music_Dive_Ch2
	channel 3, Music_Dive_Ch3
	channel 4, Music_Dive_Ch4

Music_Dive_Ch1:
	volume 7, 7
	duty_cycle $2
	note_type 8, 8, 4
	tempo 222
;Bar 1
	sound_call Music_Dive_Ch1_Bar1
;Bar 2
	sound_call Music_Dive_Ch1_Bar2
;Bar 3
	sound_call Music_Dive_Ch1_Bar1
;Bar 4
	sound_call Music_Dive_Ch1_Bar2
;Bar 5
	sound_call Music_Dive_Ch1_Bar1
;Bar 6
	sound_call Music_Dive_Ch1_Bar2
;Bar 7
	sound_call Music_Dive_Ch1_Bar1
;Bar 8
	sound_call Music_Dive_Ch1_Bar2
;Bar 9
	sound_call Music_Dive_Ch1_Bar1
;Bar 10
Music_Dive_Ch1_loop:
	sound_call Music_Dive_Ch1_Bar2
;Bar 11
	sound_call Music_Dive_Ch1_Bar1
;Bar 12
	sound_call Music_Dive_Ch1_Bar2
;Bar 13
	sound_call Music_Dive_Ch1_Bar1
;Bar 14
	sound_call Music_Dive_Ch1_Bar2
;Bar 15
	sound_call Music_Dive_Ch1_Bar1
;Bar 16
	sound_call Music_Dive_Ch1_Bar2
;Bar 17
	sound_call Music_Dive_Ch1_Bar1
;Bar 18
	sound_call Music_Dive_Ch1_Bar2
;Bar 19
	sound_call Music_Dive_Ch1_Bar1
;Bar 20
	sound_call Music_Dive_Ch1_Bar2
;Bar 21
	sound_call Music_Dive_Ch1_Bar1
;Bar 22
	sound_call Music_Dive_Ch1_Bar2
;Bar 23
	sound_call Music_Dive_Ch1_Bar1
;Bar 24
	sound_call Music_Dive_Ch1_Bar2
;Bar 25
	sound_call Music_Dive_Ch1_Bar2
;Bar 26
	stereo_panning TRUE, FALSE
	volume_envelope 9, 5
	duty_cycle $1
	rest 3
	octave 4
	note G_, 1
	note D_, 1
	stereo_panning FALSE, TRUE
	volume_envelope 8, 5
	note G_, 1
	note D_, 1
	stereo_panning TRUE, FALSE
	volume_envelope 7, 5
	note G_, 1
	note D_, 1
	stereo_panning FALSE, TRUE
	volume_envelope 6, 5
	note G_, 1
	note D_, 1
	stereo_panning TRUE, FALSE
	volume_envelope 5, 5
	note G_, 1
	note D_, 1
	stereo_panning FALSE, TRUE
	volume_envelope 4, 5
	note G_, 1
	note D_, 1
	stereo_panning TRUE, FALSE
	volume_envelope 3, 5
	note G_, 1
	note D_, 1
	rest 13
;Bar 27
	volume_envelope 9, 5
	note F_, 1
	note C_, 1
	stereo_panning FALSE, TRUE
	volume_envelope 8, 5
	note F_, 1
	note C_, 1
	stereo_panning TRUE, FALSE
	volume_envelope 7, 5
	note F_, 1
	note C_, 1
	stereo_panning FALSE, TRUE
	volume_envelope 6, 5
	note F_, 1
	note C_, 1
	stereo_panning TRUE, FALSE
	volume_envelope 5, 5
	note F_, 1
	note C_, 1
	stereo_panning FALSE, TRUE
	volume_envelope 4, 5
	note F_, 1
	note C_, 1
	stereo_panning TRUE, FALSE
	volume_envelope 3, 5
	note F_, 1
	note C_, 1
	rest 7
;Bar 28
	volume_envelope 9, 5
	note B_, 1
	note D_, 1
	stereo_panning FALSE, TRUE
	volume_envelope 8, 5
	note B_, 1
	note D_, 1
	stereo_panning TRUE, FALSE
	volume_envelope 7, 5
	note B_, 1
	note D_, 1
	stereo_panning FALSE, TRUE
	volume_envelope 6, 5
	note B_, 1
	note D_, 1
	note B_, 1

	volume_envelope 8, 4
	duty_cycle $2
	stereo_panning TRUE, FALSE
	note G_, 1
	rest 1
	note G_, 1
	octave 5
	note G_, 2
	note G_, 1
	stereo_panning FALSE, TRUE
	octave 4
	note G_, 1
	rest 1
	note G_, 1
	octave 5
	note G_, 3
;Bar 29
	sound_call Music_Dive_Ch1_Bar1
;Bar 30
	sound_call Music_Dive_Ch1_Bar2
;Bar 31
	sound_call Music_Dive_Ch1_Bar1
	sound_loop 0, Music_Dive_Ch1_loop

Music_Dive_Ch1_Bar1:
	octave 4;
	stereo_panning TRUE, FALSE
	note G_, 1
	rest 1
	note G_, 1
	octave 5
	note G_, 3
	stereo_panning FALSE, TRUE
	octave 4
	note G_, 1
	note G_, 1
	note G_, 1
	octave 5
	note G_, 3
	stereo_panning TRUE, FALSE
	octave 4
	note G_, 1
	rest 1
	note G_, 1
	octave 5
	note G_, 3
	stereo_panning FALSE, TRUE
	octave 4
	note G_, 1
	rest 1
	note G_, 1
	octave 5
	note G_, 2
	note G_, 1
	sound_ret

Music_Dive_Ch1_Bar2:
	octave 4;
	stereo_panning TRUE, FALSE
	note G_, 1
	note G_, 1
	note G_, 1
	octave 5
	note G_, 2
	note G_, 1
	stereo_panning FALSE, TRUE
	octave 4
	note G_, 1
	rest 1
	note G_, 1
	octave 5
	note G_, 3
	stereo_panning TRUE, FALSE
	octave 4
	note G_, 1
	rest 1
	note G_, 1
	octave 5
	note G_, 2
	note G_, 1
	stereo_panning FALSE, TRUE
	octave 4
	note G_, 1
	rest 1
	note G_, 1
	octave 5
	note G_, 3
	sound_ret
; ============================================================================================================

Music_Dive_Ch2:
	duty_cycle $1
	note_type 8, 10, 8
	vibrato 0, 2, 5
;Bar 1
	rest 16
	rest 8
;Bar 2
	rest 16
	rest 8
;Bar 3
	rest 16
	rest 8
;Bar 4
	rest 16
	rest 8
;Bar 5
	rest 16
	rest 5
	octave 4
	note F#, 1
	note G_, 1
	note A_, 1
;Bar 6
	note_type 12, 10, 8
	note B_, 12
	note_type 8, 10, 8
	octave 5
	note D_, 1
	note C#, 1
	note C_, 1
	octave 4
	note B_, 7
;Bar 7
	note B_, 16
	octave 5
	note C_, 1
	rest 2
	octave 4
	note A_, 1
;Bar 8
	note B_, 7
	note B_, 16
	note_type 4, 10, 8
	note A#, 1
	note B_, 1
	note_type 8, 10, 8
;Bar 9
	octave 5
	note C_, 11
	note_type 4, 10, 8
	rest 1
	note C#, 1
	note_type 8, 10, 8
	note D_, 6
	note C_, 2
	octave 4
	note_type 4, 10, 8
	note B_, 1
	note A_, 1
	note G#, 1
	note F#, 1
	note E_, 1
	note D_, 1
	note C#, 1
	octave 3
	note B_, 1
;Bar 10
Music_Dive_Ch2_loop:
	duty_cycle $3
	note_type 8, 11, 8
	octave 1
	note D#, 1
	rest 1
	note D_, 1
	note D#, 2
	note G_, 1
	volume_envelope 7, 8
	note G_, 2
	volume_envelope 11, 8
	note A#, 1
	volume_envelope 7, 8
	note A#, 2
	volume_envelope 11, 8
	octave 2
	note D_, 1
	volume_envelope 7, 8
	note D_, 2
	volume_envelope 11, 8
	rest 6
	note D_, 1
	octave 1
	note D#, 3
;Bar 11
	note D_, 1
	rest 1
	note C#, 1
	note D_, 2
	note F#, 1
	volume_envelope 7, 8
	note F#, 2
	volume_envelope 11, 8
	note A_, 1
	volume_envelope 7, 8
	note A_, 2
	volume_envelope 11, 8
	octave 2
	note C#, 1
	volume_envelope 7, 8
	note C#, 2
	volume_envelope 11, 8
	rest 3
	note C#, 1
	volume_envelope 7, 8
	note C#, 2
	volume_envelope 11, 8
	note C#, 1
	octave 1
	note D_, 3
;Bar 12
	note F_, 1
	rest 1
	note E_, 1
	note F_, 2
	note G#, 1
	rest 2
	octave 2
	note C_, 1
	rest 2
	note D_, 1
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	note D_, 1
	note D#, 1
	note D_, 1
	note C_, 1
	rest 1
	octave 1
	note G#, 1
;Bar 13
	note G_, 1
	rest 1
	note F#, 1
	note G_, 2
	note B_, 1
	volume_envelope 7, 8
	note B_, 2
	volume_envelope 11, 8
	octave 2
	note D_, 1
	volume_envelope 7, 8
	note D_, 2
	volume_envelope 11, 8
	note F#, 1
	volume_envelope 7, 8
	note F#, 2
	volume_envelope 11, 8
	note F#, 1
	octave 1
	note G_, 2
	rest 1
	octave 4
	duty_cycle $1
	note B_, 1
	note A_, 1
	note G_, 1
	note F#, 1
	note G_, 1
	note A_, 1
;Bar 14
	note B_, 6
	note B_, 12
	octave 5
	note D_, 1
	note C#, 1
	note C_, 1
	octave 4
	note B_, 6
;Bar 15
	note B_, 14
	rest 1
	note B_, 2
	octave 5
	note C_, 1
	rest 2
	octave 4
	note A_, 1
;Bar 16
	note_type 12, 11, 8
	note B_, 12
	note B_, 16
	note_type 4, 11, 8
;Bar 17
	note A_, 1
	note G_, 1
	note F#, 1

	note E_, 1
	note D_, 1
	note C_, 1

	octave 3
	note B_, 1
	note A_, 1
	note G_, 1

	note F#, 1
	note E_, 1
	note D#, 1
;Bar 18
	note D_, 8
	note D#, 7
	note E_, 1
	note F_, 12
	rest 1
	note F#, 1
	note F_, 6
	note D#, 6
	note D_, 6
;Bar 19
	sound_call Music_Dive_Ch2_Bar19
;Bar 20
	note G#, 1
	note G_, 5
	note G#, 6
	note A#, 11
	rest 1
	note A#, 2
	rest 2
	note A#, 2
	rest 2
	note A#, 2
	rest 2
	octave 4
	note C_, 2
	octave 3
	note A#, 2
	note A_, 2
	note G#, 6
;Bar 21
	note_type 8, 11, 8
	note F#, 12
	note_type 4, 11, 8
	note A_, 12
	note B_, 4
	note A#, 1
	note A_, 1
	note G#, 1
	note G_, 1
	note F#, 1
	note F_, 1
	note E_, 1
	note D#, 1
;Bar 22
	octave 4
	note D_, 8
	note D#, 8
	note F_, 12
	rest 2
	note F_, 6
	note D#, 6
	note D_, 6
;Bar 23
	sound_call Music_Dive_Ch2_Bar19
;Bar 24
	note_type 8, 11, 8
	note G_, 3
	note G#, 3
	note A#, 6
	note A#, 1
	rest 1
	note A#, 1
	rest 1
	note A#, 1
	rest 1
	octave 5
	note C_, 1
	octave 4
	note A#, 1
	note A_, 1
	note G#, 3
;Bar 25
	note F#, 12
	note A_, 6
	note B_, 1
	note A_, 1
	note G_, 1
	note F#, 1
	note G_, 1
	note A_, 1
;Bar 26
	note_type 12, 11, 8
	note B_, 12
	note_type 8, 11, 8
	octave 5
	note D_, 1
	note C#, 1
	note C_, 1
	octave 4
	note B_, 6
;Bar 27
	note B_, 16
	rest 1
	octave 5
	note C_, 1
	rest 2
	octave 4
	note A_, 1
;Bar 28
	note_type 12, 11, 8
	note B_, 12
	note B_, 16
	note_type 4, 10, 8
;Bar 29
	note A_, 1
	note G_, 1
	volume_envelope 9, 8
	note F#, 1
	note E_, 1
	volume_envelope 8, 8
	note D_, 1
	note C_, 1
	volume_envelope 7, 8
	octave 3
	note B_, 1
	note A_, 1
	volume_envelope 6, 8
	note G_, 1
	note F#, 1
	volume_envelope 5, 8
	note E_, 1
	note D#, 1
;Bar 30
	note_type 8, 11, 8
	rest 16
	rest 16
	rest 16
	sound_loop 0, Music_Dive_Ch2_loop


Music_Dive_Ch2_Bar19:
	note C#, 10;
	note C#, 11
	note G#, 1
	note A_, 1
	note A#, 1
	note B_, 12
	note A_, 4
	note G#, 1
	note G_, 1
	note F#, 1
	note F_, 1
	note E_, 1
	note D#, 1
	note D_, 1
	note C#, 1
	sound_ret

; ============================================================================================================

Music_Dive_Ch3:
	note_type 8, 1, 2
;Bar 1
	rest 16
	rest 8
;Bar 2
	sound_call Music_Dive_Ch3_Bar2
;Bar 3
	sound_call Music_Dive_Ch3_Bar3
;Bar 4
	sound_call Music_Dive_Ch3_Bar2
;Bar 5
	sound_call Music_Dive_Ch3_Bar5
;Bar 6
	sound_call Music_Dive_Ch3_Bar2
;Bar 7
	sound_call Music_Dive_Ch3_Bar3
;Bar 8
	sound_call Music_Dive_Ch3_Bar2
;Bar 9
	sound_call Music_Dive_Ch3_Bar5
;Bar 10
Music_Dive_Ch3_loop:
	sound_call Music_Dive_Ch3_Bar10
;Bar 11
	sound_call Music_Dive_Ch3_Bar11
;Bar 12
	sound_call Music_Dive_Ch3_Bar12
;Bar 13
	sound_call Music_Dive_Ch3_Bar13
;Bar 14
	sound_call Music_Dive_Ch3_Bar2
;Bar 15
	sound_call Music_Dive_Ch3_Bar3
;Bar 16
	sound_call Music_Dive_Ch3_Bar2
;Bar 17
	sound_call Music_Dive_Ch3_Bar17
;Bar 18
	sound_call Music_Dive_Ch3_Bar10
;Bar 19
	sound_call Music_Dive_Ch3_Bar11
;Bar 20
	sound_call Music_Dive_Ch3_Bar12
;Bar 21
	sound_call Music_Dive_Ch3_Bar2
;Bar 22
	sound_call Music_Dive_Ch3_Bar10
;Bar 23
	sound_call Music_Dive_Ch3_Bar11
;Bar 24
	sound_call Music_Dive_Ch3_Bar12
;Bar 25
	sound_call Music_Dive_Ch3_Bar13
;Bar 26
	sound_call Music_Dive_Ch3_Bar2
;Bar 27
	octave 2
	note F_, 1
	note F_, 1
	note A_, 1
	octave 3
	note C_, 1
	note C_, 1
	note E_, 1
	note F_, 1
	note G_, 1
	note A_, 1
	octave 4
	note C_, 1
	note C_, 1
	note E_, 1
	note F_, 1
	note F_, 1
	note A_, 1
	octave 5
	note C_, 1
	note C_, 1
	note E_, 1
	note F_, 1
	note E_, 1
	note C_, 1
	octave 4
	note G_, 1
	note E_, 1
	note C_, 1
;Bar 28
	sound_call Music_Dive_Ch3_Bar2
;Bar 29
	sound_call Music_Dive_Ch3_Bar17
	rest 16
	rest 16
	rest 16
	sound_loop 0, Music_Dive_Ch3_loop

Music_Dive_Ch3_Bar2:
	octave 2;
	note G_, 1
	volume_envelope 2, 2
	note G_, 1
	volume_envelope 1, 2
	note B_, 1
	octave 3
	note D_, 1
	volume_envelope 2, 2
	note D_, 1
	volume_envelope 1, 2
	note F#, 1
	note G_, 1
	note A_, 1
	note B_, 1
	octave 4
	note D_, 1
	volume_envelope 2, 2
	note D_, 1
	volume_envelope 1, 2
	note F#, 1
	note G_, 1
	volume_envelope 2, 2
	note G_, 1
	volume_envelope 1, 2
	note B_, 1
	octave 5
	note D_, 1
	volume_envelope 2, 2
	note D_, 1
	volume_envelope 1, 2
	note F#, 1
	note A_, 1
	note F#, 1
	note D_, 1
	octave 4
	note A_, 1
	note F#, 1
	note D_, 1
	sound_ret

Music_Dive_Ch3_Bar3:
	octave 2;
	note F_, 1
	volume_envelope 2, 2
	note F_, 1
	volume_envelope 1, 2
	note A_, 1
	octave 3
	note C_, 1
	volume_envelope 2, 2
	note C_, 1
	volume_envelope 1, 2
	note E_, 1
	note F_, 1
	note G_, 1
	note A_, 1
	octave 4
	note C_, 1
	volume_envelope 2, 2
	note C_, 1
	volume_envelope 1, 2
	note E_, 1
	note F_, 1
	note F_, 1
	note A_, 1
	octave 5
	note C_, 1
	volume_envelope 2, 2
	note C_, 1
	volume_envelope 1, 2
	note E_, 1
	note G_, 1
	note E_, 1
	note C_, 1
	octave 4
	note G_, 1
	note E_, 1
	note C_, 1
	sound_ret

Music_Dive_Ch3_Bar5:
	octave 2;
	note G#, 1
	volume_envelope 2, 2
	note G#, 1
	volume_envelope 1, 2
	octave 3
	note C_, 1
	note D#, 1
	volume_envelope 2, 2
	note D#, 1
	volume_envelope 1, 2
	note G_, 1
	note G#, 1
	note A#, 1
	octave 4
	note C_, 1
	note D#, 1
	volume_envelope 2, 2
	note D#, 1
	volume_envelope 1, 2
	note G_, 1
	note G#, 1
	volume_envelope 2, 2
	note G#, 1
	volume_envelope 1, 2
	octave 5
	note C_, 1
	note D#, 1
	volume_envelope 2, 2
	note D#, 1
	volume_envelope 1, 2
	note G_, 1
	note A#, 1
	note G_, 1
	note D#, 1
	note A#, 1
	note G_, 1
	octave 6
	note C_, 1
	sound_ret

Music_Dive_Ch3_Bar10:
	octave 2;
	note D#, 1
	note G_, 1
	note A#, 1
	octave 3
	note D_, 1
	note D#, 1
	note G_, 1
	note A#, 1
	octave 4
	note D_, 1
	note D#, 1
	note G_, 1
	note A#, 1
	octave 5
	note D_, 1
	note D#, 1
	note F_, 1
	note G_, 1
	note A#, 1
	note G_, 1
	note F_, 1
	note D#, 1
	note D_, 1
	note C_, 1
	octave 4
	note A#, 1
	note G_, 1
	note D#, 1
	sound_ret

Music_Dive_Ch3_Bar11:
	octave 2;
	note D_, 1
	volume_envelope 2, 2
	note D_, 1
	volume_envelope 1, 2
	note F#, 1
	note A_, 1
	volume_envelope 2, 2
	note A_, 1
	volume_envelope 1, 2
	octave 3
	note C#, 1
	note D_, 1
	note E_, 1
	note F#, 1
	note A_, 1
	volume_envelope 2, 2
	note A_, 1
	volume_envelope 1, 2
	octave 4
	note C#, 1
	note D_, 1
	volume_envelope 2, 2
	note D_, 1
	volume_envelope 1, 2
	note F#, 1
	note A_, 1
	volume_envelope 2, 2
	note A_, 1
	volume_envelope 1, 2
	octave 5
	note C#, 1
	note E_, 1
	note C#, 1
	octave 4
	note A_, 1
	octave 5
	note C#, 1
	octave 4
	note A_, 1
	octave 5
	note E_, 1
	sound_ret

Music_Dive_Ch3_Bar12:
	octave 2;
	note G#, 1
	octave 3
	note C_, 1
	note D#, 1
	note G_, 1
	note G#, 1
	note A#, 1
	octave 4
	note C_, 1
	note D#, 1
	note G_, 1
	note G#, 1
	octave 5
	note C_, 1
	note D#, 1
	note G_, 1
	volume_envelope 2, 2
	note G_, 1
	volume_envelope 1, 2
	note G_, 1
	volume_envelope 2, 2
	note G_, 1
	volume_envelope 1, 2
	note G_, 1
	volume_envelope 2, 2
	note G_, 1
	volume_envelope 1, 2
	note F_, 1
	volume_envelope 2, 2
	note F_, 1
	volume_envelope 1, 2
	note D#, 1
	note D_, 1
	volume_envelope 2, 2
	note D_, 1
	volume_envelope 1, 2
	octave 4
	note A#, 1
	sound_ret

Music_Dive_Ch3_Bar13:
	octave 2;
	note G_, 1
	note B_, 1
	octave 3
	note D_, 1
	note F#, 1
	note G_, 1
	note B_, 1
	octave 4
	note D_, 1
	note F#, 1
	note G_, 1
	note B_, 1
	octave 5
	note D_, 1
	note E_, 1
	note F#, 1
	note G_, 1
	note A_, 1
	note G_, 1
	note F#, 1
	note E_, 1
	note D_, 1
	octave 4
	note B_, 1
	note G_, 1
	note D_, 1
	octave 3
	note B_, 1
	note G_, 1
	sound_ret

Music_Dive_Ch3_Bar17:
	octave 2;
	note F_, 1
	volume_envelope 2, 2
	note F_, 1
	volume_envelope 1, 2
	note A_, 1
	octave 3
	note C_, 1
	volume_envelope 2, 2
	note C_, 1
	volume_envelope 1, 2
	note E_, 1
	note F_, 1
	note G_, 1
	note A_, 1
	octave 4
	note C_, 1
	volume_envelope 2, 2
	note C_, 1
	volume_envelope 1, 2
	note E_, 1
	note F_, 1
	volume_envelope 2, 2
	note F_, 1
	volume_envelope 1, 2
	note A_, 1
	octave 5
	note C_, 1
	volume_envelope 2, 2
	note C_, 1
	volume_envelope 1, 2
	note E_, 1
	note G_, 1
	note E_, 1
	note C_, 1
	note G_, 1
	note E_, 1
	note A_, 1
	sound_ret

; ============================================================================================================

Music_Dive_Ch4:
	toggle_noise 5
	drum_speed 8
;Bar 1
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 8
;Bar 6
	drum_note 12, 11
	drum_note 12, 1
	drum_note 12, 12
;Bar 7
	drum_note 12, 11
	drum_note 12, 1
	drum_note 12, 12
;Bar 8
	drum_note 12, 6
	drum_note 12, 6
	drum_note 12, 6
	drum_note 12, 5
	drum_note 12, 1
;Bar 9
	drum_note 12, 5
	drum_note 12, 1
	drum_note 12, 5
	drum_note 12, 1
	drum_note 12, 2
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 12, 1
	drum_note 2, 1
	drum_note 12, 1
	drum_note 6, 1
	drum_note 6, 1
	drum_note 6, 1
	drum_note 2, 1
;Bar 10
Music_Dive_Ch4_loop:
	sound_call Music_Dive_Ch4_Bar10
;Bar 11
	sound_call Music_Dive_Ch4_Bar11
	sound_loop 0, Music_Dive_Ch4_loop

Music_Dive_Ch4_Bar10:
	drum_note 12, 2;
	drum_note 12, 1
	drum_note 12, 1
	drum_note 12, 1
	drum_note 12, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 12, 2
	drum_note 12, 1
	drum_note 12, 2
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 2
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 12, 2
	drum_note 12, 1
	sound_ret

Music_Dive_Ch4_Bar11:
	drum_note 12, 2;
	drum_note 12, 1
	drum_note 12, 1
	drum_note 12, 1
	drum_note 12, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 12, 2
	drum_note 12, 1
	drum_note 12, 2
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 2
	drum_note 2, 1
	drum_note 2, 1
	drum_note 6, 1
	drum_note 12, 2
	drum_note 12, 1
	sound_ret

; ============================================================================================================
