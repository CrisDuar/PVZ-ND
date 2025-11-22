function set_costume() {
	
	/*
	This function increases the selected costume by one.
	*/
	
	var p_id = menuselectplan_obj.plant;
	
	//Check if the selected plant is on the first column, which has the ID
	if (ds_map_exists(global.costumes, p_id)){
		
		// If there are any costumes unlocked
		if (get_costume(p_id)){
			
			var _list = global.costumes[? p_id];
			
			//selects the first costume in the table
			var con = _list[| 0] + 1;
			
			if (con >= ds_list_size(_list)){
				con = 0;
				
			}else{
				
				//Selects the first costume available (the current one may not be unlocked)
				while(_list[| con] == 0){
					con++
				
					if (con >= ds_list_size(_list)){
						con = 0
						break;
					}
				}
			}
			
			//Sets the current costume to the first available.
			_list[| 0] = con;
			
			show_debug_message("CURRENT COSTUME: " + string(con));
			
			//Updates the CYS
			with(globalselect_obj){
			    if packet == menuselectplan_obj.plant{
			        update_info()
			    }
			}

			with(selectanim_obj){
			    set_costume_sprites();
			}

		}
		
	}
}
