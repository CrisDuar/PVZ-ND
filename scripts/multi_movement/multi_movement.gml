/// @description multi_movement
function multi_movement(_mov, _xx, _yy) {
	
	tile_x=(instance_nearest(x,y,pastoinv_obj)).x
	tile_y=(instance_nearest(x,y,pastoinv_obj)).y

	if _mov{
	    if init_upd{
	        init_x = _xx;
	        init_y = _yy;
	        ref_x = x
	        ref_y = y
			
			if (global.vs_mtouch[0] + global.vs_mtouch[1] == 1){
				init_x = 0;
		        init_y = 0;
		        ref_x = 0
		        ref_y = 0
			}
			
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
