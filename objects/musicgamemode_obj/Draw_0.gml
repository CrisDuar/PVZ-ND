if global.lang="en"{
//You got a prize!

draw_set_font(yougotaprize_fnt)
draw_set_valign(fa_top)
draw_set_halign(fa_center)
draw_text_ext_colour(538,32,string_hash_to_newline(ten),100,500,c_black,c_black,c_black,c_black,image_alpha)
draw_text_ext_colour(538-2,32-2,string_hash_to_newline(ten),100,500,c_white,c_white,c_white,c_white,image_alpha)

draw_text_ext_colour(538+1088,32,string_hash_to_newline("Hard mode"),100,500,c_black,c_black,c_black,c_black,image_alpha)
draw_text_ext_colour(536+1088,30,string_hash_to_newline("Hard mode"),100,500,c_white,c_white,c_white,c_white,image_alpha)

draw_text_ext_colour(538+2176,32,string_hash_to_newline("Battle mode"),100,500,c_black,c_black,c_black,c_black,image_alpha)
draw_text_ext_colour(536+2176,30,string_hash_to_newline("Battle mode"),100,500,c_white,c_white,c_white,c_white,image_alpha)

//tienda
if room==shop_rm{
draw_text_ext_colour(538,32+640,string_hash_to_newline("Plants"),100,500,c_black,c_black,c_black,c_black,image_alpha)
draw_text_ext_colour(538-2,32-2+640,string_hash_to_newline("Plants"),100,500,c_white,c_white,c_white,c_white,image_alpha)

draw_text_ext_colour(538,32+640*2,string_hash_to_newline("Costumes"),100,500,c_black,c_black,c_black,c_black,image_alpha)
draw_text_ext_colour(538-2,32-2+640*2,string_hash_to_newline("Costumes"),100,500,c_white,c_white,c_white,c_white,image_alpha)

draw_text_ext_colour(538,32+640*3,string_hash_to_newline("Upgrades"),100,500,c_black,c_black,c_black,c_black,image_alpha)
draw_text_ext_colour(538-2,32-2+640*3,string_hash_to_newline("Upgrades"),100,500,c_white,c_white,c_white,c_white,image_alpha)
}


}

if global.lang="es"{
//You got a prize!

draw_set_font(yougotaprize_fnt)
draw_set_valign(fa_top)
draw_set_halign(fa_center)
draw_text_ext_colour(538,32,string_hash_to_newline(tes),100,500,c_black,c_black,c_black,c_black,image_alpha)
draw_text_ext_colour(538-2,32-2,string_hash_to_newline(tes),100,500,c_white,c_white,c_white,c_white,image_alpha)

draw_text_ext_colour(538+1088,32,string_hash_to_newline("Modo difícil"),100,500,c_black,c_black,c_black,c_black,image_alpha)
draw_text_ext_colour(538-2+1088,32-2,string_hash_to_newline("Modo difícil"),100,500,c_white,c_white,c_white,c_white,image_alpha)

draw_text_ext_colour(538+2176,32,string_hash_to_newline("Modo batalla"),100,500,c_black,c_black,c_black,c_black,image_alpha)
draw_text_ext_colour(536+2176,30,string_hash_to_newline("Modo batalla"),100,500,c_white,c_white,c_white,c_white,image_alpha)
//tienda
if room==shop_rm{
draw_text_ext_colour(538,32+640,string_hash_to_newline("Plantas"),100,500,c_black,c_black,c_black,c_black,image_alpha)
draw_text_ext_colour(538-2,32-2+640,string_hash_to_newline("Plantas"),100,500,c_white,c_white,c_white,c_white,image_alpha)

draw_text_ext_colour(538,32+640*2,string_hash_to_newline("Disfraces"),100,500,c_black,c_black,c_black,c_black,image_alpha)
draw_text_ext_colour(538-2,32-2+640*2,string_hash_to_newline("Disfraces"),100,500,c_white,c_white,c_white,c_white,image_alpha)

draw_text_ext_colour(538,32+640*3,string_hash_to_newline("Mejoras"),100,500,c_black,c_black,c_black,c_black,image_alpha)
draw_text_ext_colour(538-2,32-2+640*3,string_hash_to_newline("Mejoras"),100,500,c_white,c_white,c_white,c_white,image_alpha)
}
}

