draw_set_halign(fa_left);
draw_set_valign(fa_top);
/*
draw_text(0,0,global.acc_id)
draw_text(0,20,global.acc_name)
draw_text(0,40, arr);*/

if (show_menu){
	var _xsz = xx;
	var _ysz = yy;
	
	draw_sprite_ext(stonebg_spr, 0, _x, _y, _xsz, _ysz, 0, c_white, 1);

	draw_set_font(plants_fnt)
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	var _title = "Accounts"
	
	if (global.lang = "es"){
		_title = "Cuentas"	
	}
	draw_text_transformed_colour(_x, _y  + 90 - 78*_ysz, _title, 1.2, 1.2, 0, c_white, c_white, c_white, c_white, 1)

	draw_set_font(levelname_fnt)
	for (var i = 0; i < array_length(arr); i++){
		
		var _c = c_dkgray;
		
		var _acc_y = _y + (140 - 78*_ysz) + 40*i
		
		draw_set_alpha(0.1);
		draw_set_colour(c_black);
		draw_rectangle(_x - (74 * _xsz) + 38, _acc_y - 15, _x  + (74 * _xsz) - 38, _acc_y + 15, false)
		draw_set_alpha(1);
		draw_set_colour(c_white);
		var _check = point_in_rectangle(mouse_x, mouse_y, _x - (74 * _xsz) + 38, _acc_y - 15, _x  + (74 * _xsz) - 38, _acc_y + 15)
		
		if (global.acc_id == arr[i]){
			
			_c = c_white;
		}else{
			if (_check) _c = make_colour_rgb(159, 228, 93);
		}
		
		draw_text_transformed_colour(_x, _acc_y, global.acc_ls[? arr[i]], 1.1, 1.1, 0, _c,_c,_c,_c,1);
	}
	
	for (var i = 0; i < ds_list_size(btns); i++){
		
		var _ban = false;
		
		if (i == 0 and ds_map_size(global.acc_ls) >= 6) _ban = true;
		
		//draw_button_bounds(btns[| i]);
		draw_button_sprite(btns[| i], btns_spr[| i], _ban, level);
	}
}