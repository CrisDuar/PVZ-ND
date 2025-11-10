if _timefreeze>0{
    draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_frost,image_alpha)
}else{
    draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
}

