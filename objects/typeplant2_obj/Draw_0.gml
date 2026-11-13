draw_sprite_ext(sprite_index,image_index,x+irandom_range(-shake, shake),y+yy, image_xscale*xmod ,image_yscale,image_angle,image_blend,image_alpha*lph_mod)

if freeze==true{
    draw_sprite_ext(sprite_index,image_index,x+irandom_range(-shake, shake),y+yy, image_xscale*xmod ,image_yscale,image_angle,c_frost,image_alpha*0.8*lph_mod)
}