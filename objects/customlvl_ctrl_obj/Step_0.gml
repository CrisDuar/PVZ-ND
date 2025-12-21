sel = -1;

for (var i = 0; i < ds_list_size(levels); i++){
	
	var _str = levels[| i];
	var _w = string_width(_str);
	var _h = string_height(_str)
	
	if (point_in_rectangle(mouse_x, mouse_y, xx, yy + sep*i, xx + _w, yy + sep*i + _h)){
		
		sel = i;
		
		if (mouse_check_button_released(mb_left)){
			global.load_level = _str
			global.is_customlvl = true;
			room_goto(generic_level_rm);
		}
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