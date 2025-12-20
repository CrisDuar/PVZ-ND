function load_game_data(){
	var _str
	
	var _acc_num = 0;
	var _acc_id = -1;
	var fname = "accounts.ini";
	
	//Load account
	ini_open(fname)
	
	_acc_num = ini_read_real("data", "acc_num", 0);
	_acc_id = ini_read_real("data", "acc_crnt", -1);
	
	for (var i = 0; i < _acc_num; i++){
		
		var _sec = "ac" + string(i);
		
		if (ini_section_exists(_sec)){
			var _acc_data = ini_read_string(_sec, "nm", "");
		
			ds_map_add(global.acc_ls, i, _acc_data);
		}else{
			_acc_num++;	
		}
	}
	
	ini_close();
	
	var _rt = "ac" + string(_acc_id) + "/";
	
	// No file or no accounts exist
	if (_acc_id == -1){
		
		global.acc_id = _acc_id;
		global.acc_name = "";
		_rt = "";
	}else{
		
		global.acc_id = _acc_id;
		global.acc_name = global.acc_ls[? _acc_id];
	}

	if file_exists(_rt + "savedata.ini"){
	    load_game(_rt +"savedata.ini");
	}else{
	    if file_exists(_rt + "savedata_backup.ini"){
	        load_game(_rt + "savedata_backup.ini");
	        //save_game();
	    }
	}

}