
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
	
	if (_struct.fog > 0){
		with(instance_create_layer(0, 0, "Instances", fogctrl_obj)){
			xfinal = _struct.fog;
		}
	}
	
	if (_struct.smog > 0){
		with(instance_create_layer(0, 0, "Instances", pollutionctrl_obj)){
			xfinal = _struct.fog;
		}
	}
	
	//Conveyor belt level
	if (_struct.is_conveyor){
		
		_struct.cys = false;
		
		with(instance_create_layer(0, 0, "GUI", ctrlcinta1_obj)){
			num = _struct.conv_code;
			t1 = _struct.conv_t1;
			t2 = _struct.conv_t2;
		}
		
		if (instance_exists(menusol_obj)) instance_destroy(menusol_obj);
	}
	
	//Choose your seeds
	if (!_struct.cys){
		camaractrl_obj.levelallowed = false;
		
		if (!_struct.is_conveyor) manual_preselected(0, _struct.preplants)
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
		fn = _struct.fn;
		infinite = _struct.infinite;
		infinite_loop = _struct.infinite;
		
		progressbar = _struct.progressbar;
		onlyname = _struct.onlyname;
		
		//Name
		lvl_en = _struct.lvl_en;
		lvl_es = _struct.lvl_es;
		lvl_zh = _struct.lvl_zh;
		
		
		//Prize
		sprite = asset_get_index(_struct.sprite);
		prizevar = _struct.prizevar;
		lvl = _struct.lvl;
		money = _struct.money;
		snd = asset_get_index(_struct.money);
		plantroom = asset_get_index(_struct.plantroom);
		
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
				
				show_debug_message($"{_zombie}: {_data.row}: {_data.num}");
				
				//_rows[_data.row] only contains indexes
				var _z_rows = array_create(array_length(_rows[_data.row]))
				
				for (var k = 0; k < array_length(_rows[_data.row]); k++){
					
					_z_rows[k] = _struct.rw[_rows[_data.row][k]]
				}
				
				//_z_rows contains the possible rows where the zombie can spawn.
				
				//Preview add zombies
				
				if !ds_map_exists(_zombie_prev, _data.typ){
				    ds_map_add(_zombie_prev, _data.typ, _data.num);
					
				}else{
					_zombie_prev[? _data.typ] += _data.num;
				}
				_z_total += _data.num;
				
				f[i][j] = [_zombie, _z_rows, _data.num];
			}
		}
	}
	
	var size = ds_map_size(_zombie_prev);
	var key = ds_map_find_first(_zombie_prev);
	
	for (var i = 0; i < size; i++;){
		
		show_debug_message(string(key) + ": " + string(floor((_zombie_prev[? key] * 5)/_z_total)))
		
		zombie_preview(asset_get_index(key), floor((_zombie_prev[? key] * 5)/_z_total))
	   
		key = ds_map_find_next(_zombie_prev, key);
	}
	
	show_debug_message(instance_number(ctrlcinta1_obj))
}
