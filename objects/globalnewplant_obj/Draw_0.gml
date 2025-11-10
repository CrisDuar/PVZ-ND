draw_sprite(sprite_index,image_index,326,464)

//You got a prize!
draw_set_font(yougotaprize_fnt)
draw_set_valign(fa_top)
draw_set_halign(fa_center)

if global.lang="en"{
draw_text_ext_colour(544,64,string_hash_to_newline(prizeEN),100,500,c_black,c_black,c_black,c_black,image_alpha)
draw_text_ext_colour(542,62,string_hash_to_newline(prizeEN),100,500,c_white,c_white,c_white,c_white,image_alpha)
}

if global.lang="es"{
draw_text_ext_colour(544,64,string_hash_to_newline(prizeES),100,500,c_black,c_black,c_black,c_black,image_alpha)
draw_text_ext_colour(542,62,string_hash_to_newline(prizeES),100,500,c_white,c_white,c_white,c_white,image_alpha)
}

//título
draw_set_font(plants_fnt)
if global.lang="en" draw_text_ext_colour(544,215,string_hash_to_newline(titleEN),100,500,c_white,c_white,c_white,c_white,image_alpha)
if global.lang="es" draw_text_ext_colour(544,215,string_hash_to_newline(titleES),100,500,c_white,c_white,c_white,c_white,image_alpha)

//descripción
draw_set_halign(fa_left)
if global.lang="en" draw_text_ext_colour(425,288,string_hash_to_newline(textEN),32,390,color,color,color,color,image_alpha)
if global.lang="es" draw_text_ext_colour(425,288,string_hash_to_newline(textES),32,390,color,color,color,color,image_alpha)

