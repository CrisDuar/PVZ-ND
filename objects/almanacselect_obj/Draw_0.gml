//if (!surface_exists(surf)){surf = surface_create(sprite_width, 510)}

//surface_set_target(surf)
//draw_clear_alpha(c_black,0);
//draw_sprite_ext(sprite_index,image_index,sprite_width/2,y-90,1,1,0,c_white,image_alpha)
draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,image_alpha)
draw_set_font(soles_fnt)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
if sprite_index==sprite and cost>=0 draw_text_colour(x+38,y+17, string_hash_to_newline(cost), c_black,c_black,c_black,c_black, image_alpha)
//if sprite_index==sprite draw_text_colour(sprite_width/2+30,y+18-90, cost, c_black,c_black,c_black,c_black, image_alpha)

//surface_reset_target()
//draw_surface(surf, x-sprite_width/2, 90)

