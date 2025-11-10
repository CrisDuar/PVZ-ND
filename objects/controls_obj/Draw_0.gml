draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(plants_fnt)
draw_set_colour(c)

draw_sprite_ext(sprite_index,image_index,x+random_range(-sh,sh),y+random_range(-sh,sh),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
if ch_key==false{
    var txt = key_to_string(def_key)
    var sz = 1
    
    if string_width(string_hash_to_newline(txt))>37{sz = 37/string_width(string_hash_to_newline(txt))}
    draw_text_transformed(x,y,string_hash_to_newline(txt),sz*image_xscale,sz*image_yscale,0)
}

draw_set_colour(c_white)

