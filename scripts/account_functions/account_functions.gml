function add_account(_name){
	
	var _id = find_acc_id(false);
	ds_map_add(global.acc_ls, _id, _name);
	
	save_accounts();
	
	return _id;
}

function load_account(_id){
	if (ds_map_exists(global.acc_ls, _id)){
		
		save_game();
		
		global.acc_id = _id;
		global.acc_name = global.acc_ls[? _id];
	
		var _rt = "ac" + string(global.acc_id) + "/";
	
		//Close the gamejolt session
		with(apicontrol_obj){
		    gj_session_ping(false);
		    gj_user_logout()
		    login = -1
		    data_import=0
		    logged=false
		    http_data[0] = -1
		    global.user=""
		    global.token=""
		}

		load_game(_rt + "savedata.ini");
	
		//Re login on gamejolt
		if global.user!="" and global.token!="" and os_is_network_connected(){
		    apicontrol_obj.login = gj_user_login(global.user,global.token)
		}
		
		save_game();
		room_restart();
	}
}

function assign_account(_id){
	if (ds_map_exists(global.acc_ls, _id)){
		
		global.acc_id = _id;
		global.acc_name = global.acc_ls[? _id];
		
		save_game();
	}
}

function rename_account(_name){

	global.acc_ls[? global.acc_id] = _name;
	global.acc_name = _name;
	
	save_accounts();
}

function remove_account(_id){
	if (ds_map_exists(global.acc_ls, _id)){
	
		ds_map_delete(global.acc_ls, _id);
		directory_destroy("ac" + string(_id));
	
		if (ds_map_size(global.acc_ls) > 0){
			
			var _new_id = find_acc_id(true);
			
			load_account(_new_id);
			
			save_accounts();
		
		}else{
			global.acc_name = "";
			global.acc_id = -1;
			
			room_restart();
		}
	}
}