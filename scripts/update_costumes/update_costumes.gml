/// @description update_costumes()
function update_costumes() {
	
	var size = ds_map_size(global.costume_unlock);
	var p_id = ds_map_find_first(global.costume_unlock);
	
	for (var i = 0; i < size; i++){
	
		var _list = global.costume_unlock[? p_id];
		
		for (var j = 0; j < ds_list_size(_list); j++){
			
			var _pair = _list[| j];
			
			var _cond = _pair[0];
			var _lvl = _pair[1];
			
			if (read_progress(_cond) > _lvl) ds_list_set(global.costumes[? p_id], j + 1, 1);
		}
		
		p_id = ds_map_find_next(global.costume_unlock, p_id);
	}
}
