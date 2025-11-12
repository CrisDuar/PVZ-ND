/// @description init_costumes()
function init_costumes() {

	//(Amount of costumes available [X], amount of plants with costumes [y])
	global.costumes = ds_grid_create(6,11)
	global.costumelist=array_create(ds_grid_width(global.costumes))//For reselect costumes

	//loop through the grid
	for(var i = 0; i < ds_grid_width(global.costumes); i++){
	    for(var j = 0; j < ds_grid_height(global.costumes); j++){
	        global.costumes[# i, j] = 0
	    }
	}

	/*
	0 is for the plant type
	1 is for the current costume
	2 is for the counter of the costume
	3 is for no costume (always 0)
	4... is for the costumes
	*/

	//Set the plants with costumes (object_index of the seedpacket)
	global.costumes[# 0, 0] = menupea_obj
	global.costumes[# 0, 1] = garlicdroneslot_obj
	global.costumes[# 0, 2] = menugravebuster_obj
	global.costumes[# 0, 3] = menurepea_obj
	global.costumes[# 0, 4] = menunut_obj
	global.costumes[# 0, 5] = jalapenoslot_obj
	global.costumes[# 0, 6] = menupuff_obj
	global.costumes[# 0, 7] = menusnpea_obj
	global.costumes[# 0, 8] = menuhealer_obj
	global.costumes[# 0, 9] = magnetslot_obj
	global.costumes[# 0, 10] = levicottonslot_obj
	/*
	Steps to add more costumes:

	1. Add more positions for [Y] in the grid
	2. Set the object index of the seedpacket just like above
	3. Add the cases in set_costume_sprites() and update_info()
	4. Add the costume in the seedpacket
	5. Add the new functions of the costume in the plant and add the conditions in user_event(0)
	*/

	/*
	set_costume_sprites()
	update_info()
	update_costumes()


/* end init_costumes */
}
