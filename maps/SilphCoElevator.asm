SilphCoElevator_MapScripts:
	def_scene_scripts

	def_callbacks

SilphCoElevatorScript:
	opentext
	elevator SilphCoElevatorData
	closetext
	iffalse .Done
	pause 5
	playsound SFX_ELEVATOR
	earthquake 60
	waitsfx
.Done:
	end

SilphCoElevatorData:
	db 11 ; floors
	elevfloor FLOOR_1F, 4, SILPH_CO_1F
	elevfloor FLOOR_2F, 3, SILPH_CO_2F
	elevfloor FLOOR_3F, 3, SILPH_CO_3F
	elevfloor FLOOR_4F, 3, SILPH_CO_4F
	elevfloor FLOOR_5F, 3, SILPH_CO_5F
	elevfloor FLOOR_6F, 3, SILPH_CO_6F
	elevfloor FLOOR_7F, 3, SILPH_CO_7F
	elevfloor FLOOR_8F, 3, SILPH_CO_8F
	elevfloor FLOOR_9F, 3, SILPH_CO_9F
	elevfloor FLOOR_10F, 3, SILPH_CO_10F
	elevfloor FLOOR_11F, 2, SILPH_CO_11F
	db -1 ; end

SilphCoElevator_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  1,  3, SILPH_CO_1F, -1
	warp_event  2,  3, SILPH_CO_1F, -1

	def_coord_events

	def_bg_events
	bg_event  3,  0, BGEVENT_READ, SilphCoElevatorScript

	def_object_events
