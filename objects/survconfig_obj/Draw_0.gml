//if room!=survival1_rm and room!=survival2_rm{
if global.lang="en"{
//You got a prize!

draw_set_font(yougotaprize_fnt)
draw_set_valign(fa_top)
draw_set_halign(fa_center)
draw_text_ext_colour(538,32,string_hash_to_newline("Endless zone"),100,500,c_black,c_black,c_black,c_black,image_alpha)
draw_text_ext_colour(538-2,32-2,string_hash_to_newline("Endless zone"),100,500,c_white,c_white,c_white,c_white,image_alpha)
}

if global.lang="es"{
//You got a prize!

draw_set_font(yougotaprize_fnt)
draw_set_valign(fa_top)
draw_set_halign(fa_center)
draw_text_ext_colour(538,32,string_hash_to_newline("Zona de infinito"),100,500,c_black,c_black,c_black,c_black,image_alpha)
draw_text_ext_colour(538-2,32-2,string_hash_to_newline("Zona de infinito"),100,500,c_white,c_white,c_white,c_white,image_alpha)
}
//}

