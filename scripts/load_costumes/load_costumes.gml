function load_costumes() {
	
	var size = ds_map_size(global.costumes);
	var p_id = ds_map_find_first(global.costumes);
	
	for (var i = 0; i < size; i++){
	
		var _list = global.costumes[? p_id];
		
		_list[| 0] = global.costumelist[? p_id];
		
		p_id = ds_map_find_next(global.costumes, p_id);
	}
}
