/// @description ////////////////////////////////ENGLISH
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
draw_text_ext_colour(538,222,string_hash_to_newline("Gold bloom"),100,500,c_white,c_white,c_white,c_white,image_alpha)

//descripción

draw_set_font(plants_fnt)
draw_set_valign(fa_top)
draw_set_halign(fa_left)
    draw_text_ext_colour(448,286,string_hash_to_newline("Gold bloom produce a burst of sun all once."),32,380,color,color,color,color,image_alpha)
}
///////////////////////////////////ESPAÑOL
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
draw_text_ext_colour(538,222,string_hash_to_newline("Florecimiento dorado"),100,500,c_white,c_white,c_white,c_white,image_alpha)

//descripción

draw_set_font(plants_fnt)
draw_set_valign(fa_top)
draw_set_halign(fa_left)
draw_text_ext_colour(448,286,string_hash_to_newline("Florecimiento dorado produce una explosión de sol y luego desaparece."),32,380,color,color,color,color,image_alpha)
}

