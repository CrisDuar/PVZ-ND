draw_self();
draw_set_font(plants_fnt)
draw_set_valign(fa_middle)
draw_set_halign(fa_left)

draw_text_ext_colour(x+56,y,string_hash_to_newline(text + ": " + string(global.survprogress)),32,440,color,color,color,color,image_alpha)

draw_sprite(sprite_index,0,x,y+62)
draw_text_ext_colour(x+56,y+62,string_hash_to_newline("Record: " + string(global.survrecord)),32,440,color,color,color,color,image_alpha)

