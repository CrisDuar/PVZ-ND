//draw_set_blend_mode(bm_add);
draw_sprite_ext(sprite_index,image_index,x+random_range(-1,1),y+random_range(-1,1),1,1.2,0,c_white,image_alpha*0.75)
draw_sprite_ext(basedoom_spr,image_index,x+random_range(-1,1),y+random_range(-1,1),1,1,0,c_white,image_alpha*0.75)

draw_set_blend_mode(bm_add);
draw_sprite_ext(sprite_index,image_index,x+random_range(-1,1),y+random_range(-1,1),1,1.2,0,c_white,image_alpha*0.25)
draw_set_blend_mode(bm_normal); 

//draw_set_blend_mode(bm_normal); 


