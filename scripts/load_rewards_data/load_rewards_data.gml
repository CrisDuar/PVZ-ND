function load_rewards_data(){
	
	enum rewards_data{
		LEVEL,
		COND,
		PLANT_ID,
		BG,
		SPR,
		WAVE,
		LVL_ROUTE,
		LVL_ID,
		TITLE_EN,
		TITLE_ES,
		NAME_EN,
		NAME_ES,
		DESC_EN,
		DESC_ES	
	}
	
	var _grid_rw = csv_to_grid("rewards.csv", true);
	global.rewards = ds_map_create();
	
	for (var i = 1; i < ds_grid_height(_grid_rw); i++){
		
		var _data = array_create(ds_grid_width(_grid_rw));
		
		var _level = _grid_rw[# rewards_data.LEVEL, i];
		var _cond = _grid_rw[# rewards_data.COND, i];
		
		var _p_id = _grid_rw[# rewards_data.PLANT_ID, i];
		
		for (var j = 0; j < ds_grid_width(_grid_rw); j++){
			
			_data[j] = _grid_rw[# j, i];
		}
		
		//The plant's data exists in the almanac
		if (_p_id != "-1"){
			
			var _alm_id = 0;
			
			//Look for the plant data in the almanac's grid
			for (var j = 1; j < ds_grid_height(global.almanac_data); j++){
				
				if (global.almanac_data[# 0, j] != "-1"){
					
					if (real(_p_id) == global.almanac_data[# almanac_data.UNIT_ID, j]){
						
						_alm_id = j;
						break;
					}
				}else{
					
					break;
				}
			}
			
			_data[rewards_data.LEVEL] = string(real(global.almanac_data[# almanac_data.LEVEL, _alm_id]) + 1);
			_level = _data[rewards_data.LEVEL]
			
			_data[rewards_data.SPR] = global.almanac_data[# almanac_data.UNIT_SPR, _alm_id];
			_data[rewards_data.NAME_EN] = global.almanac_data[# almanac_data.NAME_EN, _alm_id];
			_data[rewards_data.NAME_ES] = global.almanac_data[# almanac_data.NAME_ES, _alm_id];
			
			_data[rewards_data.DESC_EN] = string_replace(global.almanac_data[# almanac_data.DESC_EN, _alm_id], "<sl>", " ");
			_data[rewards_data.DESC_ES] = string_replace(global.almanac_data[# almanac_data.DESC_ES, _alm_id], "<sl>", " ");
		}
		
		var _key = _level + _cond; 
		
		ds_map_add(global.rewards,_key,_data);
	}
	
}