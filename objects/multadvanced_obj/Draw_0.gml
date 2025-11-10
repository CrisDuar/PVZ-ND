draw_self();
draw_set_font(plants_fnt)
draw_set_valign(fa_bottom)
draw_set_halign(fa_center)

if global.lang="en"{
draw_text_ext_colour(x,y-31,string_hash_to_newline("Advanced#options"),32,440,color,color,color,color,image_alpha)
}

if global.lang="es"{
draw_text_ext_colour(x,y-31,string_hash_to_newline("Opciones#Avanzadas"),32,440,color,color,color,color,image_alpha)
}

