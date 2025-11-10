draw_self();
draw_set_font(plants_fnt)
draw_set_valign(fa_top)
draw_set_halign(fa_center)
draw_text_ext_colour(x,y+85,string_hash_to_newline(name),32,440,color,color,color,color,image_alpha)

if locked=true draw_sprite(lockgamemode_spr,0,x,y)

