draw_sprite_ext(sprite_index,image_index,__view_get( e__VW.XView, 0 )+xstart,__view_get( e__VW.YView, 0 )+ystart,image_xscale,image_yscale,image_angle,c_white,image_alpha)
draw_set_halign(fa_left);
draw_set_valign(fa_middle)
draw_set_font(points_fnt);

draw_text_colour_outline(__view_get( e__VW.XView, 0 )+xstart+20,__view_get( e__VW.YView, 0 )+ystart,global.dinero,colorlima,colorlima,image_alpha,colorfondo,colorfondo,image_alpha,1,10,1,1,0)

