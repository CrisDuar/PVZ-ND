var w_yy = sprite_height
if water==true w_yy=65

draw_sprite_part_ext(sprite_index, image_index, 0, 0, sprite_width, w_yy, x-sprite_xoffset+irandom_range(-shake, shake), y-sprite_yoffset+5+yy, image_xscale, image_yscale, image_blend, image_alpha);

if freeze==true{
    draw_sprite_part_ext(sprite_index, image_index, 0, 0, sprite_width, w_yy, x-sprite_xoffset+irandom_range(-shake, shake), y-sprite_yoffset+5+yy, image_xscale, image_yscale, c_frost, image_alpha*0.8);
}

if water==true draw_sprite(agua2_spr,image_index,x,y)

