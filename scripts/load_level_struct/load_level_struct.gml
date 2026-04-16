
function load_level_struct(_struct){
	
	//Set control configuration
	
	var _ctrl_config = _struct.control;
	var _ctrl_keys = variable_struct_get_names(_ctrl_config);
	
	for (var i = 0; i < array_length(_ctrl_keys); i++) {
		
		var _name = _ctrl_keys[i]; // Access the keys, which are the variable names
		var _value = _ctrl_config[$ _name]; // Access the struct of variables, which has the values
		
		if (variable_instance_exists(control_obj.id, string(_name))){
			
			variable_instance_set(control_obj.id, string(_name), _value);
		}
	}
	
	if (struct_get_default(_struct, "fog", 0) > 0){
		with(instance_create_layer(0, 0, "Instances", fogctrl_obj)){
			xfinal = _struct.fog;
		}
	}
	
	if (struct_get_default(_struct, "smog", 0) > 0){
		with(instance_create_layer(0, 0, "Instances", pollutionctrl_obj)){
			xfinal = _struct.smog;
		}
	}
	
	//Conveyor belt level
	if struct_get_default(_struct, "is_conveyor", false){
		
		_struct.cys = false;
		
		with(instance_create_layer(0, 0, "GUI", ctrlcinta1_obj)){
			p_packets = struct_get_default(_struct, "conv_p_packets", p_packets);
			z_packets = struct_get_default(_struct, "conv_z_packets", z_packets);
			t1 = struct_get_default(_struct, "conv_t1", t1);
			t2 = struct_get_default(_struct, "conv_t2", t2);
			limit_num = struct_get_default(_struct, "conv_limit", limit_num);
		}
		
		if (instance_exists(menusol_obj)) instance_destroy(menusol_obj);
	}else{
		manual_preselected(0, _struct.preplants)
	}
	
	//Choose your seeds

	if (!_struct.cys){
		camaractrl_obj.levelallowed = false;
		
	}
	
	//Music
	with(musicglobalhorde_obj){
		loop = _struct.loop;
		idlesong = asset_get_index(_struct.idle_sng);
		hordesong = asset_get_index(_struct.horde_sng);
	}
	
	//Spawner
	var _zombie_prev = ds_map_create();
	var _z_total = 0;
	
	with(zombispawn_obj){	
		horde_prcnt = _struct.horde_prcnt
		surprise_enabled = _struct.surprise_enabled;
		pt = _struct.pt;
		fn = array_length(_struct.waves);
		infinite = _struct.infinite;
		infinite_loop = _struct.infinite_loop;
		
		progressbar = _struct.progressbar;
		onlyname = _struct.onlyname;
		
		//Name
		lvl_en = _struct.lvl_en;
		lvl_es = _struct.lvl_es;
		lvl_zh = _struct.lvl_zh;
		
		var _id_def = -1;
		var _digits = string_digits(global.load_level)
		
		show_debug_message("LEVEL ID DIGITS")
		show_debug_message(_digits)
		
		if (_digits != ""){
			_id_def = real(_digits) - 1;
		}
		
		var _type_def = -1
		if (string_pos("Level", global.load_level) > 0) _type_def = 0;
		if (string_pos("Hard", global.load_level) > 0) _type_def = 1;
		
		lvl_id = _id_def//struct_get_default(_struct, "lvl_id", _id_def);
		lvl_type = _type_def//struct_get_default(_struct, "lvl_type", _type_def);
		
		show_debug_message("LEVEL ID")
		show_debug_message(string(lvl_id))
		
		//Prize
		sprite = asset_get_index(_struct.sprite);
		if (struct_exists(_struct, "prizevar")) prizevar = _struct.prizevar;
		if (struct_exists(_struct, "lvl")) lvl = _struct.lvl;
		if (struct_exists(_struct, "money")) money = _struct.money;
		snd = asset_get_index(_struct.snd);
		if (struct_exists(_struct, "plantroom")) plantroom = asset_get_index(_struct.plantroom);
		
		wf=array_create(fn);
		
		//Waves with flags or warnings
		var _str_wf = _struct.wf;
		
		for (var i = 0; i < array_length(_str_wf); i++){
			wf[_str_wf[i][0]] = _str_wf[i][1]
		}
		
		var _rows = _struct.arr_row;
		var _waves = _struct.waves;
		
		//_waves[wave][zombie]
		
		for (var i = 0; i < array_length(_waves); i++){
			
			for (var j = 0; j < array_length(_waves[i]); j++){
				
				var _data = _waves[i][j];
				var _zombie = asset_get_index(_data.typ);
				
				//show_debug_message($"{_zombie}: {_data.row}: {_data.num}");
				
				//_rows[_data.row] only contains indexes
				var _z_rows = array_create(array_length(_rows[_data.row]))
				
				for (var k = 0; k < array_length(_rows[_data.row]); k++){
					
					_z_rows[k] = _struct.rw[_rows[_data.row][k]]
				}
				
				//_z_rows contains the possible rows where the zombie can spawn.
				
				//Preview add zombies
				
				if (_data.typ != "z_flag_obj" and _data.typ != "z_rally_obj"){
				
					if !ds_map_exists(_zombie_prev, _data.typ){
					    ds_map_add(_zombie_prev, _data.typ, _data.num);
					
					}else{
						_zombie_prev[? _data.typ] += _data.num;
					}
				}
				_z_total += _data.num;
				
				f[i][j] = [_zombie, _z_rows, _data.num];
			}
		}
	}
	
	var _show_zombies = struct_get_default(_struct, "show_zombies", true);
	
	if (_show_zombies){
		var size = ds_map_size(_zombie_prev);
		var key = ds_map_find_first(_zombie_prev);
	
		for (var i = 0; i < size; i++;){
		
			//show_message("KEY: " + key)
		
			zombie_preview(asset_get_index(key), clamp(round((_zombie_prev[? key] * 15)/_z_total), 1, 5))
	   
			key = ds_map_find_next(_zombie_prev, key);
		}
	}
}
