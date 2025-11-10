/// @description get_zombies(data)
/// @param data
function get_zombies(argument0) {
	var data = argument0;
	var lst_zom = ds_list_create();

	show_debug_message(ds_list_size(data))

	for(var i = 0; i < ds_list_size(data); i++){
	    var pos = data[| i]
    
	    //show_debug_message(data[| i])
	    //show_debug_message(pos)
	    //show_debug_message(pos[0])
    
	    ds_list_add(lst_zom, pos[0])
    
    
	}

	return lst_zom;




}
