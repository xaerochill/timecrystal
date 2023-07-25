	object_const_def

PowerPlantB2F_MapScripts:
	def_scene_scripts

	def_callbacks

PowerPlantB2F_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  27, 2, POWER_PLANT_B1F, 1
	warp_event  23, 14, POWER_PLANT_B1F, 2
	warp_event  27, 26, POWER_PLANT_B1F, 3
	warp_event  3, 26, POWER_PLANT_B3F, 3

	def_coord_events

	def_bg_events

	def_object_events
	