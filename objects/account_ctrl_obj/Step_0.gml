if (show_menu and global.popup_open < 2){
	
	for (var i = 0; i < array_length(arr); i++){
	
		var _acc_y = _y + (140 - 78*yy) + 40*i
	
		var _check = point_in_rectangle(mouse_x, mouse_y, _x - (74 * xx) + 38, _acc_y - 15, _x  + (74 * xx) - 38, _acc_y + 15)
	
		//Change account
		if (_check and arr[i] != global.acc_id){
		
			if (mouse_check_button_released(mb_left)){
				audio_play_sound(selectstone1_snd,1,false)
				load_account(arr[i]);
				global.popup_open--;
			}
		}
	}
	if (mouse_check_button_released(mb_left)){
		//Add
		if (check_button(btns[| 0]) and ds_map_size(global.acc_ls) < 6){
			audio_play_sound(selectstone1_snd,1,false)
			
			var _warn = create_warning(
			"Cree una cuenta nueva",
			"Create a new account",
			1,
			false
			);
			
			with(_warn){
				
				instance = other.id;
				variable = "add_acc"
				txt_variable = "add_acc_nm"
				text_en = "Name";
				text_es = "Nombre";
			}
		}
		//Rename
	
		if (check_button(btns[| 1])){
			audio_play_sound(selectstone1_snd,1,false)
			
			var _warn = create_warning(
			"Inserte un nuevo nombre",
			"Insert a new name",
			1,
			false
			);
			
			with(_warn){
				
				instance = other.id;
				variable = "rnm_acc"
				txt_variable = "rnm_acc_nm"
				text_en = "Name";
				text_es = "Nombre";
				text_def = global.acc_name;
			}
		}
		
		//Delete
		if (check_button(btns[| 2])){
			audio_play_sound(selectstone1_snd,1,false)
			
			var _warn = create_warning(
			"¿Quieres BORRAR esta cuenta? Los datos se perderán",
			"Do you want to DELETE this account?",
			0,
			true
			);
			
			with(_warn){
				instance = other.id;
				variable = "rm_acc"
			}
		}

		//Exit
		if (check_button(btns[| 3])){
			audio_play_sound(selectstone1_snd,1,false)
			show_menu = false;
			global.popup_open--;
		}
	}
}

if (rm_acc){
	rm_acc = false;
	remove_account(global.acc_id);
	global.popup_open--;
}
	
if (rnm_acc){
	rnm_acc = false;
	rename_account(rnm_acc_nm);
}
	
if (add_acc){
	add_acc = false;
	add_account(add_acc_nm);
		
	arr = ds_map_keys_to_array(global.acc_ls);
	array_sort(arr, true);
}

//Create a new account when no accounts exist.
if (global.acc_id == -1 and !instance_exists(spacebearlogo_obj)){
	
	if (!add_noacc_flag){
		if (ds_map_size(global.acc_ls == 0)){
			var _warn = create_warning(
			"Cree una cuenta nueva",
			"Create a new account",
			1,
			false
			);
			
			with(_warn){
				
				instance = other.id;
				variable = "add_noacc"
				txt_variable = "add_acc_nm"
				text_en = "Name";
				text_es = "Nombre";
				can_cancel = false;
			}
		}else{
		
			load_account(find_acc_id(false))
		}
		add_noacc_flag = true;
	}
}

if (add_noacc){
	add_noacc = false;
	add_account(add_acc_nm);
	assign_account(0);
	
	var _rt = "ac0/"; 

	if (file_exists("player_surv.ini")) {file_copy("player_surv.ini", _rt + "player_surv.ini")}
	if (file_exists("pool_surv.ini")) {file_copy("pool_surv.ini", _rt + "pool_surv.ini")}
	if (file_exists("weather_surv.ini")) {file_copy("weather_surv.ini", _rt + "weather_surv.ini")}
	
	arr = ds_map_keys_to_array(global.acc_ls);
	array_sort(arr, true);
}
