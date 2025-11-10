draw_set_alpha(backalpha)
draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
draw_set_alpha(1)
draw_sprite_ext(sprite_index,0,x,y,1,1,0,c_white,image_alpha)

draw_set_font(splashtext_fnt)
draw_set_halign(fa_center);
draw_set_valign(fa_top);

if txt!="WHY IS IT SHAKING??!!"{
draw_text_transformed_colour(x, y+160, string_hash_to_newline(txt), 1, 1, 0, c_white, c_white, c_white, c_white, splalpha);
}else{
draw_text_transformed_colour(x+random_range(-2,2), y+160+random_range(-2,2), string_hash_to_newline(txt), 1, 1, 0, c_white, c_white, c_white, c_white, splalpha);
}

