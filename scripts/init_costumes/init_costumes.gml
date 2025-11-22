/// @description init_costumes()
function init_costumes() {
	
	/*
	Steps to add more costumes:

	1. Add the costume data to the plant in global.plants_packets and almanac.csv in the same order
	2. Add the new functions of the costume in the plant and add the conditions in user_event(0)
	*/
	
	//Initialize the tables
	global.costumes = ds_map_create();
	global.costumelist = ds_map_create();
	global.costume_unlock = ds_map_create();
	
	//Find the costumes in the almanac
	
	var init_y = 0;
	
	for (var i = 1; i < ds_grid_height(global.almanac_data); i++){ 
	
	    if (global.almanac_data[# 0, i] == "-1"){
	        init_y = i + 1;
	        break;
	    }
	}
	
	//Current costume
	var _cos_c = 0;
	//Current plant
	var _cos_p = -1;
	
	for (var i = init_y; i < ds_grid_height(global.almanac_data); i++){ 
		
	    if (global.almanac_data[# 0, i] != "-2"){
			
			if (global.almanac_data[# almanac_data.UNIT_ID, i] == "-1") break;
			
			_cos_c++;
			
			if (_cos_p != real(global.almanac_data[# almanac_data.UNIT_ID, i])){
			
				_cos_p = real(global.almanac_data[# almanac_data.UNIT_ID, i]);
				_cos_c = 0;
				
				//Add the plant to the map
				ds_map_add(global.costumes, _cos_p, ds_list_create());
				//Add the first value, which is for the selected costume
				ds_list_add(global.costumes[? _cos_p], 0);
				
				ds_map_add(global.costumelist, _cos_p, 0);
				ds_map_add(global.costume_unlock, _cos_p, ds_list_create());
			}
			
			//Adds the costume to the list
			ds_list_add(global.costumes[? _cos_p], 0)
			
			//Adds the costume conditions
			var _cond = global.almanac_data[# almanac_data.COND, i]
			var _lvl = global.almanac_data[# almanac_data.LEVEL, i]
			
			ds_list_add(global.costume_unlock[? _cos_p], [_cond, _lvl])
			
		}else{
			
			break;
		}
	}
}
