/// @description pick_lane_battles()
function pick_lane_battles() {
	
	//The amount of danger on each lane
	var _lanes = array_create(array_length(zombispawn_obj.rows_arr), 0);
	
	//List with zombies on a row & number of zombies
	var _ls_zom = ds_list_create();
	var _nz = 0;
	
	//List with all plants;
	var _ls_pla = ds_list_create();
	var _np = 0;
	
	//Total HP and DMG
	var _ttl_hp = 0;
	var _ttl_dmg = 0;
	
	//For each lane
	for (var i = 0; i < maxbrains; i++){
		
		_nz = collision_line_list(0,zombispawn_obj.rows_arr[i],950,zombispawn_obj.rows_arr[i], eatfather_obj, false,false, _ls_zom, true);
		_np = collision_rectangle_list(0,zombispawn_obj.rows_arr[i]-40,1600,zombispawn_obj.rows_arr[i]+10, typeplant2_obj, false,false, _ls_pla, true);
		
		for (var j = 0; j < ds_list_size(_ls_zom); j++){
			
			with(_ls_zom[| j]){
	            if variable_instance_exists(id, "vida") _ttl_hp += vida; 
	        }
		}
		
		for(var j = 0; j<ds_list_size(_ls_pla); j++){
	        with(_ls_pla[| j]){
	            if variable_instance_exists(id, "dmg"){
	                _ttl_dmg += dmg;
	            }
	        }
	    }
		
		//_ttl_hp = _ttl_hp + 200 - clamp(abs((270-_nz)/1000), 0, 1)*200;
		_ttl_hp += 20*_nz;
		if (_np == 0) _ttl_dmg -= 40;
		
		show_debug_message(string(_ttl_hp) + " " + string(_ttl_dmg))
		
		_lanes[i] = _ttl_hp - _ttl_dmg;
	}
	
	//Now picks the lane
	var _maxlanes = 0
	var _maxhp = _lanes[0]

	for (var i = 0; i < maxbrains; i++){
	    if (_lanes[i] > _maxhp){
	        _maxlanes = i;
	        _maxhp = _lanes[i]
	    }
	    show_debug_message("row: " + string(i+1) + "| hp: " + string(_lanes[i]))
	}

	ds_list_destroy(_ls_zom)
	ds_list_destroy(_ls_pla)

	return zombispawn_obj.rows_arr[_maxlanes];
	
}
