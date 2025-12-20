if (init){
	
	if (danger) draw_sprite_ext(redscreen_spr,0, 0, 0, 1, 1, 0, c_white, danger_alpha)
	
	draw_sprite(warn_window_spr, danger, _x, _y);

	var _txt = txt_en;
	if (global.lang == "es") _txt = txt_es;
	
	draw_set_font(plants_fnt)
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	
	var _txt_y = _y;
	
	if (type == 1){
		draw_set_valign(fa_bottom);	
		_txt_y -= 25
	}
	
	draw_text_ext_colour(_x, _txt_y + 20, _txt, 30, 370, c_dkgray, c_dkgray, c_dkgray, c_dkgray, 1);

	for (var i = 0; i < ds_list_size(btn_sprites); i++){
	
		//draw_button_bounds(btn_bounds[| i]);
		draw_button_sprite(btn_bounds[| i], btn_sprites[| i], false, level);
	}
}
//draw_text(mouse_x, mouse_y, string(level) + " vs " + string(global.popup_open))