draw_self();
draw_set_font(plants_fnt)
draw_set_valign(fa_middle)
draw_set_halign(fa_left)

if global.lang="en"{
draw_text_ext_colour(x+72,y,string_hash_to_newline("Use unit"),32,440,color,color,color,color,image_alpha)
}

if global.lang="es"{
draw_text_ext_colour(x+72,y,string_hash_to_newline("Usar a la unidad"),32,440,color,color,color,color,image_alpha)
}

