draw_sprite(sprite_index,image_index,326,464 + sine_yy)

//You got a prize!
draw_set_font(yougotaprize_fnt)
draw_set_valign(fa_top)
draw_set_halign(fa_center)

var _prize = prizeEN;
var _title = titleEN;
var _text = textEN

if global.lang="es"{
	_prize = prizeES;
	_title = titleES;
	_text = textES;
}

draw_text_ext_colour(544,64,string_hash_to_newline(_prize),100,500,c_black,c_black,c_black,c_black,image_alpha)
draw_text_ext_colour(542,62,string_hash_to_newline(_prize),100,500,c_white,c_white,c_white,c_white,image_alpha)

draw_set_font(plants_fnt)
draw_text_ext_colour(544,215,string_hash_to_newline(_title),100,500,c_white,c_white,c_white,c_white,image_alpha)

draw_set_halign(fa_left)
draw_text_ext_colour(425,288,string_hash_to_newline(_text),32,390,color,color,color,color,image_alpha)