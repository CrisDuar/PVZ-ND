/// @description is_costume_selected(Seedpacket, costume to test)
/// @param Seedpacket
/// @param  costume to test
function is_costume_selected(_p_id, _cos) {
	
	
	if (ds_map_exists(global.costumes, _p_id)){
		
		if (global.costumes[? _p_id][| 0] == _cos){
			
			return true;
		}else{
			
			return false;
		}
		
	}else{
		
		return false;
	}
}