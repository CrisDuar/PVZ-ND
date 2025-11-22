function update_info() {
	menuselectplan_obj.plant=packet;
	menuselectplan_obj.unitcost=cost; 
	menuselectplan_obj.unitsprite=plantsprite; 
	menuselectplan_obj.grass=bg;
	menuselectplan_obj.unitname_es=name_es
	menuselectplan_obj.unitname_en=name_en
	menuselectplan_obj.islock = lock
	
	
	var p_id = menuselectplan_obj.plant;
	var p_data = global.plants_packets[p_id]
	
	if (variable_struct_exists(p_data, "costume")){
		
		//costume data
		var pc_data = p_data.costume;
		
		//Current costume selected
		var p_costume = ds_list_find_value(global.costumes[? p_id], 0)
		
		if (p_costume > 0){
			show_debug_message("ARRAY LENGTH: " + string(array_length(pc_data)));
			show_debug_message("COSTUME to check: " + string(p_costume - 1));

			menuselectplan_obj.unitcost = struct_get_default(pc_data[p_costume - 1], "cost", p_data.cost);
			
			//Getting the unit sprite (the one to display in CYS) from the almanac
			var init_y = 0;
			
			for (var i = 1; i < ds_grid_height(global.almanac_data); i++){ 
	
			    if (global.almanac_data[# 0, i] == "-1"){
			        init_y = i + 1;
			        break;
			    }
			}
	
			//Current costume
			var _cos_c = 0;
	
			for (var i = init_y; i < ds_grid_height(global.almanac_data); i++){ 
		
			    if (global.almanac_data[# 0, i] != "-2"){
				
					if (global.almanac_data[# almanac_data.UNIT_ID, i] == string(p_id)){
						
						if (_cos_c == p_costume - 1){
							menuselectplan_obj.unitsprite = asset_get_index(global.almanac_data[# almanac_data.UNIT_SPR, i])
							break;
						}else{
							
							_cos_c++;
						}
					}
					
				}
				
			}
			
			//menuselectplan_obj.unitsprite = struct_get_default(pc_data[p_costume - 1], "sprite", p_data.sprite);
		}
	}
}
