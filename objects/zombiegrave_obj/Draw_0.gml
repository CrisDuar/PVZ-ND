if !surface_exists(surf) surf=surface_create(sprite_width+50,sprite_height-10-(water*30))


surface_set_target(surf);
draw_clear_alpha(c_black,0);
draw_sprite(sprite_index,image_index,sprite_xoffset,sprite_yoffset+h+(water*30))
//draw_rectangle_colour(0,sprite_height,sprite_width,sprite_height+172,c_black,c_black,c_black,c_black,false)
surface_reset_target();

draw_surface(surf,x-sprite_xoffset,y-sprite_yoffset)

