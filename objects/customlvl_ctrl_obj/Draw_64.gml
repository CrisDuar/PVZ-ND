
if (show_menu){
	var _xsz = _gx;
	var _ysz = _gy;
	
	draw_sprite_ext(stonebg_spr, 0, _x, _y, _xsz, _ysz, 0, c_white, 1);

	draw_set_font(plants_fnt)
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	var _title = level_info.lvl_en
	
	if (global.lang = "es"){
		_title = level_info.lvl_es
	}
	draw_text_transformed_colour(_x, _y  + 90 - 78*_ysz, _title, 1.2, 1.2, 0, c_white, c_white, c_white, c_white, 1)
	
    //Draw buttons
	for (var i = 0; i < ds_list_size(btns); i++){
		
		draw_button_sprite(btns[| i], btns_spr[| i], false, 1);
	}
}