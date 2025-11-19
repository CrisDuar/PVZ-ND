/// @description check_water(plant_id);
/// @param plant_id
function check_water(plant_id) {
	
	var p_data = plant_id - 1;
	
	var _ground = (p_data==plants_id.POTATOMINE or p_data==plants_id.BOWLINGBULB or plant_id==31);
    
	if (water==false and distance_to_object(charco_obj)>0){ //no water
    
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
