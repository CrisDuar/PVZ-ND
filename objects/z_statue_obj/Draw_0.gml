if warn==false{
    draw_sprite(statuewarn_spr,warn_img,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),y)
}

if warn_rush==true{

    event_inherited();
    /*if water==false{
        draw_sprite_ext(sprite_index,image_index,x+irandom_range(-shake, shake),y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
    }else{
        draw_sprite_part_ext(sprite_index, image_index, 0, 0, sprite_width, 115, x-sprite_xoffset+irandom_range(-shake, shake), y-sprite_yoffset+30, image_xscale, image_yscale, image_blend, image_alpha);
        if control_obj.invisible==false draw_sprite(agua2_spr,image_index,x,y)
    }*/
}

/* */
/*  */
