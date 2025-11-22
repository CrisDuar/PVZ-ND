/// @description get_costume(check if there are costumes available)
/// @param check if there are costumes available
function get_costume(p_id) {

	// If there are any costumes unlocked
	var _arecos = false;
	///List of costumes
	
	if (ds_map_exists(global.costumes, p_id)){
		
		var _list = global.costumes[? p_id];
		for (var i = 1; i < ds_list_size(_list); i++){
			
			if (_list[| i] > 0){
				_arecos	= true;
				break;
			}
		}
	}
	return _arecos

}
