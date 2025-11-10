/// @description get_units_string(unit type)
/// @param unit type
function get_units_string(argument0) {

	var _pckt = argument0
	var packets = ds_list_create();
	var str = "";

	with(_pckt){
	    ds_list_add(packets, sprite_get_name(sprite_index))
	}

	for (var j = 0; j < ds_list_size(packets); j++){

	    for (var i = 1; i < ds_grid_height(global.almanac_data); i++){
    
	        if global.almanac_data[# 4, i] == packets[| j]{
            
	            var _add = ", ";
            
	            if (j == ds_list_size(packets)-1) _add=""
            
	            str += global.almanac_data[# 1, i] + _add
            
	            break;
	        }
	    }
	}

	return str;



}
