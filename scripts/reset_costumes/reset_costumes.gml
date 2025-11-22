/// @description reset_costumes()
function reset_costumes() {

	//Reset selected costumes
	//Sets the current costume of each costume to zero (0)
	var size = ds_map_size(global.costumes);
	var key = ds_map_find_first(global.costumes);
	for (var i = 0; i < size; i++){
	
		var _list = global.costumes[? key];
		
		_list[| 0] = 0;
		
		key = ds_map_find_next(global.costumes, key);
	}
}
