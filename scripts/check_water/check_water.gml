/// @description check_water(plant_id);
/// @param plant_id
function check_water(argument0) {
	var plant_id = argument0
	var _ground = (plant_id==3 or plant_id==11 or plant_id==31);
    
	if (water==false and distance_to_object(charco_obj)>0){
    
	    if (_ground){
	       if (distance_to_object(nenufar_obj)>0) return 1;
    
	    }else{
	        return 1;
	    }
	}else{
	     if (distance_to_object(nenufar_obj)<1 and !_ground) return 1;
	}

	return 0;



}
