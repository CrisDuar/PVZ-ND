draw_self();
draw_set_font(plants_fnt)
draw_set_valign(fa_top)
draw_set_halign(fa_center)
var c1 = c_black
var c2= c_white

if global.lang="en"{
draw_text_ext_colour(x,y-62,string_hash_to_newline("Credits"),32,440,color,color,color,color,image_alpha)
}

if global.lang="es"{
draw_text_ext_colour(x,y-62,string_hash_to_newline("Créditos"),32,440,color,color,color,color,image_alpha)
}

