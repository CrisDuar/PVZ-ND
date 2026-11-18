sel = -1;

//Clicking a level

for (var i = 0; i < ds_list_size(levels); i++){
	
	var _str = levels[| i];
	var _w = string_width(_str);
	var _h = string_height(_str)
	
	if (point_in_rectangle(mouse_x, mouse_y, xx, yy + sep*i, xx + _w, yy + sep*i + _h)){
		
		sel = i;
        if (mouse_check_button_released(mb_left)){
            open_level(_str)
        }
		/*
		if (mouse_check_button_released(mb_left)){
			global.load_level = _str
			global.is_customlvl = true;
			room_goto(generic_level_rm);
		}
        */
	}

}

if (sel == -1){
	
	if (mouse_check_button_pressed(mb_left)){
		
		drag = true;
		my_pos = mouse_y;
		dyy = yy;
	}
}

if (drag){
	
	yy = clamp(dyy - my_pos + mouse_y, 100 - (sep * (ds_list_size(levels) - 19)), 100)//32 * ds_list_size(levels) + 640)
	
	if (mouse_check_button_released(mb_left)){
		
		drag = false;
	}
}

#region Level GUI
if (show_menu and global.popup_open < 2){
	
	if (mouse_check_button_released(mb_left)){
		//Play
		if (check_button(btns[| 0])){
			audio_play_sound(selectstone1_snd,1,false)
			

			global.load_level = level_file;
			global.is_customlvl = true;
			room_goto(generic_level_rm);
		}
		
		//Delete
		if (check_button(btns[| 1])){
			audio_play_sound(selectstone1_snd,1,false)
			
			var _warn = create_warning(
			"¿Quieres BORRAR este nivel? Los datos se perderán",
			"Do you want to DELETE this level?",
			0,
			true
			);
			
			with(_warn){
				instance = other.id;
				variable = "rm_lvl"
			}
		}

		//Exit
		if (check_button(btns[| 2])){
			audio_play_sound(selectstone1_snd,1,false)
			show_menu = false;
			global.popup_open--;
		}
	}
}

if (rm_lvl){
    show_menu = false; 
    global.popup_open--;
    delete_level(level_file)
    reload_levels()
    rm_lvl = false;
}

#endregion