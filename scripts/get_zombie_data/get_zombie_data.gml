/// @description get_zombie_data(zombie)
/// @param zombie
function get_zombie_data(argument0) {
	var zombie = argument0

	for(var i = 0; i < ds_list_size(lst_data); i++){
	    var pos = lst_data[| i]
    
	    if pos[0] == zombie{
	        return pos
	    }
	}




}
