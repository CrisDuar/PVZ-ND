/// @description multi_movement
function multi_movement(argument0, argument1, argument2) {
	_mov = argument0
	_xx = argument1
	_yy = argument2
	tile_x=(instance_nearest(x,y,pastoinv_obj)).x
	tile_y=(instance_nearest(x,y,pastoinv_obj)).y

	if _mov{
	    if init_upd{
	        init_x = _xx;
	        init_y = _yy;
	        ref_x = x
	        ref_y = y
	        init_upd = false;
	    }

	    x = clamp(ref_x + _xx - init_x,(instance_nearest(320,92,pastoinv_obj)).x,(instance_nearest(1040,92,pastoinv_obj)).x)
	    y = clamp(ref_y + _yy - init_y,(instance_nearest(320,92,pastoinv_obj)).y,(instance_nearest(320,560,pastoinv_obj)).y)
	}else{
	    x += (tile_x-x)/10
	    y += (tile_y-y)/10
	    init_upd = true;
	}





}
