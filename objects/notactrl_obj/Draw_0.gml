draw_set_font(font)
draw_set_valign(fa_top)
draw_set_halign(fa_left)

var _t = t_en;
var _f = f_en;

if (global.lang == "es"){
	
	_t = t_es;
	_f = f_es
}

draw_text_ext_colour(260,105,string_hash_to_newline(_t),50,550,color,color,color,color,image_alpha)

draw_set_halign(fa_right)
draw_text_ext_colour(790,330,string_hash_to_newline(_f),25,1100,color,color,color,color,image_alpha)
