function get_target_lobbed(argument0, argument1, argument2) {
	var xx = argument0
	var yy = argument1
	var _maxdistance = argument2
	var zom = collision_line_first(xx, yy, _maxdistance, yy, eatfather_obj, false, false)
        
	if (zom == noone){
	    zom = collision_line_first(xx, yy, _maxdistance, yy, parentattack_obj, false, false)
	}else{
	    if (object_get_parent(zom.object_index) == obstaclezombie_obj){
       
	        var hit_zom = collision_rectangle_dslist(xx, yy-1, _maxdistance, yy+1, eatfather_obj, false, true, ds_list_create(), true);
	        var no_obs_list = ds_list_create();
	        var dist_list = ds_list_create();
        
	        var no_obs;
        
	        //buscar los zombis que no son obstáculos
	        for (var i = ds_list_size(hit_zom) - 1; i >= 0; i--){
	            no_obs = hit_zom[| i];
            
	            if (object_get_parent(no_obs.object_index) != obstaclezombie_obj){
	                ds_list_add(no_obs_list, no_obs);
	                ds_list_add(dist_list, abs(xx - no_obs.x));
	            }
	        }
        
	        //buscar al más cercano
	        var _zdist = 5000;
        
	        for (var i = 0; i < ds_list_size(no_obs_list); i++){
            
	            if (dist_list[| i] < _zdist){
	                zom = no_obs_list[| i]
	                _zdist = dist_list[| i]
	            }
	        }
	        ds_list_destroy(hit_zom)
	        ds_list_destroy(no_obs_list)
	        ds_list_destroy(dist_list)
	    }
    
	     /*
	    while(object_get_parent(zom.object_index) == obstaclezombie_obj){
	        var no_obs;
        
	        with(zom){
	            no_obs = collision_line_first(bbox_right, yy-10, _maxdistance, yy, eatfather_obj, false, true)
	        }
        
	        if (no_obs != noone){
	            zom = no_obs;
	        }else{
	            zom = og_zom
	            break;
	        }
	        diff += 0.01
	    }*/
	}

	return zom;



}
