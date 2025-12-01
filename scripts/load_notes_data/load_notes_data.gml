function load_notes_data(){
	
	enum notes_data{		
		COND,
		LEVEL,
		FONT,
		BG,
		LVL_ROUTE,
		LVL_ID,
		TEXT_EN,
		SIGN_EN,
		TEXT_ES,
		SIGN_ES
	}
	
	var _grid_rw = csv_to_grid("notes.csv", true);
	global.notes = ds_map_create();
	
	for (var i = 1; i < ds_grid_height(_grid_rw); i++){
		
		var _data = array_create(ds_grid_width(_grid_rw));
		
		var _level = _grid_rw[# notes_data.LEVEL, i];
		var _cond = _grid_rw[# notes_data.COND, i];
		
		for (var j = 0; j < ds_grid_width(_grid_rw); j++){
			
			_data[j] = _grid_rw[# j, i];
		}
		
		var _key = _level + _cond; 
		
		ds_map_add(global.notes,_key,_data);
	}
	
}