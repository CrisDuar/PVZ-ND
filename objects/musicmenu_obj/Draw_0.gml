draw_set_font(yougotaprize_fnt)
draw_set_valign(fa_top)
draw_set_halign(fa_center)

if global.lang="en"{
draw_text_ext_colour(538+1088,32,string_hash_to_newline("Game options"),100,500,c_black,c_black,c_black,c_black,image_alpha)
draw_text_ext_colour(536+1088,30,string_hash_to_newline("Game options"),100,500,c_white,c_white,c_white,c_white,image_alpha)

draw_text_ext_colour(538+2176,32,string_hash_to_newline("Log in"),100,500,c_black,c_black,c_black,c_black,image_alpha)
draw_text_ext_colour(536+2176,30,string_hash_to_newline("Log in"),100,500,c_white,c_white,c_white,c_white,image_alpha)

draw_text_ext_colour(538+3264,32,string_hash_to_newline("Account settings"),100,500,c_black,c_black,c_black,c_black,image_alpha)
draw_text_ext_colour(536+3264,30,string_hash_to_newline("Account settings"),100,500,c_white,c_white,c_white,c_white,image_alpha)
}

if global.lang="es"{
draw_text_ext_colour(538+1088,32,string_hash_to_newline("Opciones del juego"),100,500,c_black,c_black,c_black,c_black,image_alpha)
draw_text_ext_colour(536+1088,30,string_hash_to_newline("Opciones del juego"),100,500,c_white,c_white,c_white,c_white,image_alpha)

draw_text_ext_colour(538+2176,32,string_hash_to_newline("Acceder"),100,500,c_black,c_black,c_black,c_black,image_alpha)
draw_text_ext_colour(536+2176,30,string_hash_to_newline("Acceder"),100,500,c_white,c_white,c_white,c_white,image_alpha)

draw_text_ext_colour(538+3264,32,string_hash_to_newline("Ajustes de cuenta"),100,500,c_black,c_black,c_black,c_black,image_alpha)
draw_text_ext_colour(536+3264,30,string_hash_to_newline("Ajustes de cuenta"),100,500,c_white,c_white,c_white,c_white,image_alpha)
}

/*//dibujar variables
if room==menu_rm_{
draw_set_font(soles_fnt)
draw_set_halign(fa_left)


draw_text_colour(16,608,"Version " + "1.1.1" + android + betanum,c_black,c_black,c_black,c_black,1)
draw_text_colour(18,606,"Version " + "1.1.1" + android + betanum,c_white,c_white,c_white,c_white,1)

}
/*
draw_text_colour(16,608,"Version 1.0.1 (Android)",c_black,c_black,c_black,c_black,1)
draw_text_colour(18,606,"Version 1.0.1 (Android)",c_white,c_white,c_white,c_white,1)

/* */
/*  */
