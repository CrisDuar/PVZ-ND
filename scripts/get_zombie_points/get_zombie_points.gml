/// @description get_zombie_points(zombie)
/// @param zombie
function get_zombie_points(argument0) {
	var zombie = argument0

	for(var i = 0; i < ds_list_size(lst_data); i++){
	    var pos = lst_data[| i]
    
	    if pos[0] == zombie{
	        return pos[1]
	    }
	}


	/*


	var pos = ds_list_find_index(zs_endless_obj.lst_zombies,argument0)

	if pos!=-1{
	    return ds_list_find_value(zs_endless_obj.pts_zombies,pos)
	}else{
	    return -1
	}



/* end get_zombie_points */
}
