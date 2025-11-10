/// @description get_achievement(ID)
/// @param ID
function get_achievement(argument0) {
	var _id = argument0

	if (_id <= ds_grid_height(global.logros) - 1 and _id >= 0){

	    if (global.logros[# 0, _id] == false){
    
	        global.logros[# 0, _id] = true
        
	        if (global.logros[# 6, _id] != 3) global.unlock_logros++
        
	        if (do_anim) ds_queue_enqueue(global.logros_fila, _id)
	    }
	}else{
	    show_debug_message("El logro ID" + string(_id) + " no existe.")
	}




}
