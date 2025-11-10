draw_sprite_ext(sprite_index,image_index,x,y+yy,image_xscale,image_yscale,image_angle,image_blend,image_alpha)

if freeze==true{
draw_sprite_ext(sprite_index,image_index,x,y+yy,image_xscale,image_yscale,image_angle,c_frost,image_alpha)
}

if room==nivel63_rm{
    draw_set_halign(fa_left)
    draw_set_valign(fa_middle)
    draw_set_font(levelname_fnt)
    
    draw_sprite(heart_spr,0,x-25,y-3)
    draw_text_colour_outline(x-5,y,vida,c_white,c_white,0.85,c_dkgray,c_dkgray,1,2,20,1,1,0)
}

