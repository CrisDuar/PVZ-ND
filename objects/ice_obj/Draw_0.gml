//draw_sprite_ext(ice_spr,image_index,x,y,image_xscale,1,0,c_white,1)
draw_set_alpha(image_alpha)
draw_sprite_tiled_area(ice_spr,image_index,x,y,x-xx,y,x,y+sprite_height-1)
draw_set_alpha(1)

