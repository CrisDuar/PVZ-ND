/// @description get_zombie_points(zombies[| j])
/// @param zombies[| j]
function get_zombie_odds(argument0) {
	var zombie = argument0

	for(var i = 0; i < ds_list_size(lst_data); i++){
	    var pos = lst_data[| i]
    
	    if pos[0] == zombie{
	        return pos[2]
	    }
	}


	/*
	var pos = ds_list_find_index(zs_endless_obj.lst_zombies,argument0)

	if pos!=-1{
	    return ds_list_find_value(zs_endless_obj.odd_zombies, pos)
	}else{
	    return -1
	}



/* end get_zombie_odds */
}
