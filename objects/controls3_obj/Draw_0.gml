draw_self();
draw_set_font(plants_fnt)
draw_set_valign(fa_middle)
draw_set_halign(fa_left)
draw_set_colour(make_colour_rgb(105,70,44))

if global.lang="en"{
draw_text_ext_colour(x+72,y,string_hash_to_newline("Put unit"),32,440,color,color,color,color,image_alpha)
}

if global.lang="es"{
draw_text_ext_colour(x+72,y,string_hash_to_newline("Colocar unidad"),32,440,color,color,color,color,image_alpha)
}

