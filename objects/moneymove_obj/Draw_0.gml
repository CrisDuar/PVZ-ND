//draw_text_ext_colour(xstart,ystart+velocidad,"+ " + string(value),0,0,c_white,c_white,c_white,c_white,image_alpha)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
draw_set_font(points_fnt)
draw_set_halign(fa_center)
draw_text_colour_outline(xstart,ystart-20-a,"+ " + string(value) + "$",ct,ct,image_alpha,co,co,image_alpha,1,10,1,1,0)

