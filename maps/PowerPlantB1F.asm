	object_const_def

PowerPlantB1F_MapScripts:
	def_scene_scripts

	def_callbacks

PowerPlantB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7, 16, POWER_PLANT, 3
	warp_event  27, 2, POWER_PLANT_B2F, 1
	warp_event  23, 14, POWER_PLANT_B2F, 2
	warp_event  27, 26, POWER_PLANT_B2F, 3

	def_coord_events

	def_bg_events

	def_object_events
	