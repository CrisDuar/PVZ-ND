draw_sprite_part_ext(sprite_index, image_index, 0, 0, abs(sprite_width), sprite_height-y_wtr-yy-23*sign(y_wtr), x-sprite_xoffset+irandom_range(-shake, shake), y-sprite_yoffset+y_wtr+yy, image_xscale, image_yscale, image_blend, image_alpha*lph_mod);

///HIPNO
if hipno=true{
draw_sprite_part_ext(sprite_index, image_index, 0, 0, abs(sprite_width), sprite_height-y_wtr-yy-23*sign(y_wtr), x-sprite_xoffset+irandom_range(-shake, shake), y-sprite_yoffset+y_wtr+yy, image_xscale, image_yscale, c_fuchsia, (image_alpha*lph_mod)/2);
}

if motivated=true{
draw_sprite_part_ext(sprite_index, image_index, 0, 0, abs(sprite_width), sprite_height-y_wtr-yy-23*sign(y_wtr), x-sprite_xoffset+irandom_range(-shake, shake), y-sprite_yoffset+y_wtr+yy, image_xscale, image_yscale, c_orange, (image_alpha*lph_mod)/2);
}

if gooptime>0 and canpoison==true{
draw_sprite_part_ext(sprite_index, image_index, 0, 0, abs(sprite_width), sprite_height-y_wtr-yy-23*sign(y_wtr), x-sprite_xoffset+irandom_range(-shake, shake), y-sprite_yoffset+y_wtr+yy, image_xscale, image_yscale, c_purple, (image_alpha*lph_mod)/2);
}

if electro=true{
draw_sprite_part_ext(electrozom_spr, electroimg, 0, 0, abs(sprite_width), sprite_height-y_wtr-yy-23*sign(y_wtr), x-sprite_xoffset+irandom_range(-shake, shake), y-sprite_yoffset+y_wtr+yy, image_xscale, image_yscale, c_white, 1);
}

if control_obj.invisible==false and water==true draw_sprite(agua2_spr,image_index,x,y)

if frozenstop>0 and canfreeze=true and water==false and congelado==true{
    dropice=true
    draw_sprite_ext(hielo_spr,0,x,y+5,image_xscale,1,0,c_white,1)
}


/*
if water==false{
    draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
    if motivated=true{
    draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_orange,image_alpha/2)
    }
    
    if gooptime>0{
    draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_purple,image_alpha/1.5)
    }
    
    if electro=true{
    draw_sprite_ext(electrozom_spr,electroimg,x,y,image_xscale,image_yscale,image_angle,c_white,1)
    }
}else{
    draw_sprite_part_ext(sprite_index, image_index, 0, 0, sprite_width, sprite_height-57, x-sprite_xoffset, y-sprite_yoffset+30, image_xscale, image_yscale, image_blend, image_alpha);
    if motivated=true{
    draw_sprite_part_ext(sprite_index, image_index, 0, 0, sprite_width, sprite_height-57, x-sprite_xoffset, y-sprite_yoffset+30, image_xscale, image_yscale, c_orange, image_alpha/2);
    }
    
    if gooptime>0{
    draw_sprite_part_ext(sprite_index, image_index, 0, 0, sprite_width, sprite_height-57, x-sprite_xoffset, y-sprite_yoffset+30, image_xscale, image_yscale, c_purple, image_alpha/2);
    }
    
    if electro=true{
    draw_sprite_part_ext(electrozom_spr, electroimg, 0, 0, sprite_width, sprite_height-57, x-sprite_xoffset, y-sprite_yoffset+30, image_xscale, image_yscale, c_white, 1);
    }
    if control_obj.invisible==false draw_sprite(agua2_spr,image_index,x,y)
}
*/


/* */
/*  */
