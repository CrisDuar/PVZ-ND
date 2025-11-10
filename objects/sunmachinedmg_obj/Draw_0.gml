if water==false{
    draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
}else{
    draw_sprite_part_ext(sprite_index, image_index, 0, 0, sprite_width, 115, x-sprite_xoffset, y-sprite_yoffset+30, image_xscale, image_yscale, image_blend, image_alpha);
    draw_sprite(agua2_spr,image_index,x,y)
}

