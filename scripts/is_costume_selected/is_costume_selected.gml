/// @description is_costume_selected(Seedpacket, costume to test)
/// @param Seedpacket
/// @param  costume to test
function is_costume_selected(argument0, argument1) {
	var _indx = argument0
	var _cos = argument1

	var _yy = -1
	var _ret = 0

	if ds_grid_value_exists(global.costumes, 0, 0, 0, ds_grid_height(global.costumes)-1, _indx){
	    _yy = ds_grid_value_y(global.costumes, 0, 0, 0, ds_grid_height(global.costumes)-1, _indx);
    
	    if global.costumes[# 1, _yy] = 1 and global.costumes[# 2, _yy]==_cos{
	        _ret = 1
	    }else{
	        _ret = 0
	    }    
	}else{
	    _ret = -1
	}


	return _ret;



}
