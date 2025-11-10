/// @description pick_lock_seeds()
function pick_lock_seeds() {

	for(var i=0; i < array_length_1d(lock_selection_obj.plants); i++){
	    with(globalselect_obj){
	        if (lock_selection_obj.plants[i]==sprite){
	            press_globalselect(i)
            
	            lock = true;
	            break;
	        }
	    }
	}

	with(selectanim_obj){
	    lock = true;
	}




}
