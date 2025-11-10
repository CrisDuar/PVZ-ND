event_inherited();
/*if water==false{
    draw_sprite_ext(sprite_index,image_index,x+ irandom_range(-shake, shake),y+ irandom_range(-shake, shake),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
    if motivated=true{
    draw_sprite_ext(sprite_index,image_index,x+ irandom_range(-shake, shake),y+ irandom_range(-shake, shake),image_xscale,image_yscale,image_angle,c_orange,image_alpha/2)
    }
    
    if gooptime>0{
    draw_sprite_ext(sprite_index,image_index,x+ irandom_range(-shake, shake),y+ irandom_range(-shake, shake),image_xscale,image_yscale,image_angle,c_purple,image_alpha/1.5)
    }
}else{
    draw_sprite_part_ext(sprite_index, image_index, 0, 0, sprite_width, 150, x-sprite_xoffset+ irandom_range(-shake, shake), y-sprite_yoffset+30+ irandom_range(-shake, shake), image_xscale, image_yscale, image_blend, image_alpha);
    if motivated=true{
    draw_sprite_part_ext(sprite_index, image_index, 0, 0, sprite_width, 150, x-sprite_xoffset+ irandom_range(-shake, shake), y-sprite_yoffset+30+ irandom_range(-shake, shake), image_xscale, image_yscale, c_orange, image_alpha/2);
    }
    
    if gooptime>0{
    draw_sprite_part_ext(sprite_index, image_index, 0, 0, sprite_width, 150, x-sprite_xoffset+ irandom_range(-shake, shake), y-sprite_yoffset+30+ irandom_range(-shake, shake), image_xscale, image_yscale, c_purple, image_alpha/1.5);
    }
    if control_obj.invisible==false draw_sprite(agua2_spr,image_index,x,y)
}

/* */
/*  */
