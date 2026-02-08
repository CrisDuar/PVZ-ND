draw_set_font(levelname_fnt)
draw_set_halign(fa_left);
draw_set_valign(fa_top);

for (var i = 0; i < ds_list_size(levels); i++){
	
	var _c1 = c_white;
	var _c2 = c_dkgray
	
	if (sel == i){
		_c1 = make_colour_rgb(159, 228, 93);
		_c2 = make_colour_rgb(68, 145, 61);
	}
	//draw_text_colour_outline(xx, yy + sep*i, string(i) +  ". ", _c1, _c1, 1, _c2, _c2,1,2,20,1,1,0)
	draw_text_colour_outline(xx, yy + sep*i, string(i + 1) +  ") " +  levels[| i], _c1, _c1, 1, _c2, _c2,1,2,20,1,1,0)
}