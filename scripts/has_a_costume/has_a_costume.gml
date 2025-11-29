function has_a_costume(_p_id) {
	
	
	if (ds_map_exists(global.costumes, _p_id)){
		
		if (global.costumes[? _p_id][| 0] > 0){
			
			return true;
		}else{
			
			return false;
		}
		
	}else{
		
		return false;
	}
}