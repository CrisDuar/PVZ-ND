function save_accounts(){
	
	var _acc_num = ds_map_size(global.acc_ls);
	
	if (_acc_num > 0){
		var fname = "accounts.ini";
	
		if (file_exists(fname)){
		
			file_delete(fname);	
		}
	
		//Save accounts
		ini_open(fname)
	
		ini_write_real("data", "acc_num", _acc_num);
		ini_write_real("data", "acc_crnt", global.acc_id);
	
		for (var i = 0; i < _acc_num; i++){
		
			if (ds_map_exists(global.acc_ls, i)){
				ini_write_string("ac" + string(i), "nm", global.acc_ls[? i]);
			}else{
				_acc_num++;	
			}
		}
	
		ini_close();
	}
}