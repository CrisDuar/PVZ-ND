/// @description Info
//ENGLISH
draw_self();
if global.lang="en"{
//You got a prize!

draw_set_font(yougotaprize_fnt)
draw_set_valign(fa_top)
draw_set_halign(fa_center)
draw_text_ext_colour(538,704,string_hash_to_newline("How to play"),100,500,c_black,c_black,c_black,c_black,image_alpha)
draw_text_ext_colour(538-2,704-2,string_hash_to_newline("How to play"),100,500,c_white,c_white,c_white,c_white,image_alpha)
//título

draw_set_font(plants_fnt)
draw_set_valign(fa_top)
draw_set_halign(fa_center)
draw_text_ext_colour(538,862,string_hash_to_newline(tittle_en),100,500,c_white,c_white,c_white,c_white,image_alpha)

//descripción

draw_set_font(plants_fnt)
draw_set_valign(fa_top)
draw_set_halign(fa_left)
    draw_text_ext_colour(448,926,string_hash_to_newline(message_en),32,380,color,color,color,color,image_alpha)
}
///////////////////////////////////ESPAÑOL
if global.lang="es"{
//You got a prize!

draw_set_font(yougotaprize_fnt)
draw_set_valign(fa_top)
draw_set_halign(fa_center)
draw_text_ext_colour(538,704,string_hash_to_newline("Cómo jugar"),100,500,c_black,c_black,c_black,c_black,image_alpha)
draw_text_ext_colour(538-2,704-2,string_hash_to_newline("Cómo jugar"),100,500,c_white,c_white,c_white,c_white,image_alpha)
//título

draw_set_font(plants_fnt)
draw_set_valign(fa_top)
draw_set_halign(fa_center)
draw_text_ext_colour(538,862,string_hash_to_newline(tittle_es),100,500,c_white,c_white,c_white,c_white,image_alpha)

//descripción

draw_set_font(plants_fnt)
draw_set_valign(fa_top)
draw_set_halign(fa_left)
draw_text_ext_colour(448,926,string_hash_to_newline(message_es),32,380,color,color,color,color,image_alpha)
}

