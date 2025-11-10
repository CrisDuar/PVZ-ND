/// @description pick_random_lock_seeds(num of plants)
/// @param num of plants
function pick_random_lock_seeds(argument0) {
	var _n = argument0
	var _arr = array_create(n);

	for(var i=0; i < _n; i++){
	    with(globalselect_obj){
	        if (sprite_index == sprite and ban==false) _arr[i] = sprite
        
	        break;
	    }
	}

	return _arr;



}
