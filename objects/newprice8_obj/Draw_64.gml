if global.lang="en"{
//You got a prize!

draw_set_font(yougotaprize_fnt)
draw_set_valign(fa_top)
draw_set_halign(fa_center)
draw_text_ext_colour(538,64,string_hash_to_newline("You got a PRIZE!"),100,500,c_black,c_black,c_black,c_black,image_alpha)
draw_text_ext_colour(538-2,64-2,string_hash_to_newline("You got a PRIZE!"),100,500,c_white,c_white,c_white,c_white,image_alpha)
//título

draw_set_font(plants_fnt)
draw_set_valign(fa_top)
draw_set_halign(fa_center)
draw_text_ext_colour(538,222,string_hash_to_newline("Extra seed slot"),100,500,c_white,c_white,c_white,c_white,image_alpha)

//descripción

draw_set_font(plants_fnt)
draw_set_valign(fa_top)
draw_set_halign(fa_left)
draw_text_ext_colour(448,286,string_hash_to_newline("Lets you choose another plant type every level!"),32,380,color,color,color,color,image_alpha)
}

if global.lang="es"{
//You got a prize!

draw_set_font(yougotaprize_fnt)
draw_set_valign(fa_top)
draw_set_halign(fa_center)
draw_text_ext_colour(538,64,string_hash_to_newline("¡Conseguiste un PREMIO!"),100,500,c_black,c_black,c_black,c_black,image_alpha)
draw_text_ext_colour(538-2,64-2,string_hash_to_newline("¡Conseguiste un PREMIO!"),100,500,c_white,c_white,c_white,c_white,image_alpha)
//título

draw_set_font(plants_fnt)
draw_set_valign(fa_top)
draw_set_halign(fa_center)
draw_text_ext_colour(538,222,string_hash_to_newline("Espacio extra"),100,500,c_white,c_white,c_white,c_white,image_alpha)

//descripción

draw_set_font(plants_fnt)
draw_set_valign(fa_top)
draw_set_halign(fa_left)
draw_text_ext_colour(448,286,string_hash_to_newline("¡Te permite escoger una planta más en cada nivel!"),32,380,color,color,color,color,image_alpha)
}

