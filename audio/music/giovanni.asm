;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.2.0 (16-Nov-2022)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_Giovanni:
	channel_count 4
	channel 1, Music_Giovanni_Ch1
	channel 2, Music_Giovanni_Ch2
	channel 3, Music_Giovanni_Ch3

Music_Giovanni_Ch1:
	volume 7, 7
	duty_cycle 2
	note_type 12, 10, 7
	tempo 138
;Bar 1
	octave 3
	volume_envelope 9, 7
	note A_, 2
	rest 2
	note A_, 1
	note A_, 2
	note A_, 1
	note A#, 2
	rest 2
	note A#, 2
	rest 2
;Bar 2
	note G_, 2 ; WARNING: Auto-Sync says: Rounded up!
	rest 2
	note G_, 2
	rest 2
	note A_, 2
	rest 2
	note E_, 2 ; WARNING: Auto-Sync says: Rounded up!
	rest 2
;Bar 3
	note A_, 2
	rest 2
	note A_, 1
	note A_, 2
	note A_, 1
	note A#, 2
	rest 2
	note A#, 2
	rest 2
;Bar 4
	note G_, 2
	rest 6
	note A_, 2
	rest 6
;Bar 5
	note A_, 2 ; WARNING: Auto-Sync says: Rounded up!
	rest 2
	note A_, 1
	note A_, 2
	note A_, 1
	note A#, 2
	rest 2
	note A#, 2
	rest 2
;Bar 6
	note G_, 2
	rest 2
	note G_, 2
	rest 2
	note A_, 2
	rest 2
	note E_, 2
	rest 2
;Bar 7
	note A_, 2
	rest 2
	note A_, 1
	note A_, 2
	note A_, 1
	note A#, 2 ; WARNING: Auto-Sync says: Rounded up!
	rest 2
	note A#, 2
	rest 2
;Bar 8
	note G_, 2
	rest 2
	octave 4
	note D#, 2
	rest 2
	note D_, 2
	rest 16
	rest 16
	rest 16
	rest 16
	rest 6
;Bar 13
	octave 3
	note A_, 2
	rest 2
	note A_, 1
	note A_, 2
	note A_, 1
	note A#, 2
	rest 2
	note A#, 2
	rest 2
;Bar 14
	note G_, 2
	rest 2
	note G_, 2
	rest 2
	note A_, 2
	rest 2
	note E_, 2
	rest 2
;Bar 15
	note A_, 2
	rest 2
	note A_, 1
	note A_, 2
	note A_, 1
	note A#, 2
	rest 2
	note A#, 2
	rest 2
;Bar 16
	note G_, 2
	rest 6
	note A_, 2
	rest 6
;Bar 17
	note A_, 2
	rest 2
	note A_, 1
	note A_, 2
	note A_, 1
	note A#, 2
	rest 2
	note A#, 2
	rest 2
;Bar 18
	note G_, 2
	rest 2
	note G_, 2
	rest 2
	note A_, 2
	rest 2
	note E_, 2
	rest 2
;Bar 19
	note A_, 2
	rest 2
	note A_, 1
	note A_, 2
	note A_, 1
	note A#, 2
	rest 2
	note A#, 2
	rest 2
;Bar 20
	note G_, 2
	rest 2
	octave 4
	note D#, 2
	rest 2
	note D_, 2
	sound_ret

; ============================================================================================================

Music_Giovanni_Ch2:
	duty_cycle 1
	note_type 12, 10, 7
;Bar 1
	octave 4
	volume_envelope 9, 7
	note D_, 2
	rest 2
	note D_, 1
	note D_, 2
	note D_, 1
	note D#, 2
	rest 2
	note D#, 2
	rest 2
;Bar 2
	note C_, 2 ; WARNING: Auto-Sync says: Rounded up!
	rest 2
	note C_, 2
	rest 2
	note D_, 2
	rest 2
	octave 3
	note A_, 2
	rest 2
;Bar 3
	octave 4
	note D_, 2
	rest 2
	note D_, 1
	note D_, 2
	note D_, 1
	note D#, 2
	rest 2
	note D#, 2 ; WARNING: Auto-Sync says: Rounded up!
	rest 2
;Bar 4
	note D_, 2
	rest 2
	note A#, 2
	rest 2
	note A_, 2
	rest 6
;Bar 5
	note D_, 2
	rest 2
	note D_, 1
	note D_, 2 ; WARNING: Auto-Sync says: Rounded up!
	note D_, 1
	note D#, 2
	rest 2
	note D#, 2
	rest 2
;Bar 6
	note C_, 2
	rest 2
	note C_, 2 ; WARNING: Auto-Sync says: Rounded up!
	rest 2
	note D_, 2
	rest 2
	octave 3
	note A_, 2
	rest 2
;Bar 7
	octave 4
	note D_, 2
	rest 2
	note D_, 1
	note D_, 2
	note D_, 1
	note D#, 2
	rest 2
	note D#, 2
	rest 2
;Bar 8
	note C_, 2 ; WARNING: Auto-Sync says: Rounded up!
	rest 2
	note G#, 2
	rest 2
	note G_, 2
	rest 6
;Bar 9
	octave 3
	note D#, 16
	note D#, 16
;Bar 11
	octave 2
	note A#, 16
;Bar 12
	octave 3
	note D#, 8
	note F_, 8
;Bar 13
	octave 4
	note D_, 2
	rest 2
	note D_, 1
	note D_, 2
	note D_, 1
	note D#, 2
	rest 2
	note D#, 2
	rest 2
;Bar 14
	note C_, 2
	rest 2
	note C_, 2
	rest 2
	note D_, 2
	rest 2
	octave 3
	note A_, 2
	rest 2
;Bar 15
	octave 4
	note D_, 2
	rest 2
	note D_, 1
	note D_, 2
	note D_, 1
	note D#, 2
	rest 2
	note D#, 2
	rest 2
;Bar 16
	note D_, 2
	rest 2
	note A#, 2
	rest 2
	note A_, 2
	rest 6
;Bar 17
	note D_, 2
	rest 2
	note D_, 1
	note D_, 2
	note D_, 1
	note D#, 2
	rest 2
	note D#, 2
	rest 2
;Bar 18
	note C_, 2
	rest 2
	note C_, 2
	rest 2
	note D_, 2
	rest 2
	octave 3
	note A_, 2
	rest 2
;Bar 19
	octave 4
	note D_, 2
	rest 2
	note D_, 1
	note D_, 2
	note D_, 1
	note D#, 2
	rest 2
	note D#, 2
	rest 2
;Bar 20
	note C_, 2
	rest 2
	note G#, 2
	rest 2
	note G_, 2
	rest 6
;Bar 21
	octave 3
	note D#, 16
	note D#, 16
;Bar 23
	octave 2
	note A#, 16
;Bar 24
	octave 3
	note D#, 8
	note F_, 8
	sound_ret

; ============================================================================================================

Music_Giovanni_Ch3:
	note_type 12, 1, 0
;Bar 1
	volume_envelope 2, 0
	rest 16
	rest 12
;Bar 2
	octave 4
	note C_, 4
;Bar 3
	note D_, 8
	note D#, 8
;Bar 4
	note G_, 8
	note A#, 8
;Bar 5
	note A_, 8
	note A#, 8
;Bar 6
	note G_, 8
	note A_, 4
	note D_, 4
;Bar 7
	note A_, 8
	note A#, 8
;Bar 8
	octave 5
	note C#, 8
	note D_, 8
;Bar 9
	note D#, 16
	note D#, 16
;Bar 11
	octave 4
	note A#, 16
;Bar 12
	octave 5
	note D#, 8
	note F_, 8
;Bar 13
	octave 4
	note D_, 16
	note D_, 16
	note D_, 8
;Bar 15
	note D#, 8
;Bar 16
	note G_, 8
	note A#, 8
;Bar 17
	note A_, 8
	note A#, 8
;Bar 18
	note G_, 8
	note A_, 4
	note D_, 4
;Bar 19
	note A_, 8
	note A#, 8
;Bar 20
	octave 5
	note C#, 8
	note D_, 8
;Bar 21
	note D#, 16
	note D#, 16
;Bar 23
	octave 4
	note A#, 16
;Bar 24
	octave 5
	note D#, 8
	note F_, 8
	sound_ret

; ============================================================================================================

