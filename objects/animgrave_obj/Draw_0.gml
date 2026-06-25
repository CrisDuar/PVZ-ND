var _spr = object_get_sprite(gravetype);
var _h = sprite_get_height(_spr) - 55;


var _channel = animcurve_get_channel(gravesAnimation_ca, 0);
var _val = animcurve_channel_evaluate(_channel, time);


if water==false{
    draw_sprite_part(_spr, 0, 0, 0, sprite_get_width(_spr), 55 + _h * _val, x-sprite_xoffset, y-sprite_yoffset + _h - _h * _val)
    //draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
}else{
    draw_sprite_part_ext(sprite_index, image_index, 0, 0, sprite_width, 140, x-sprite_xoffset, y-sprite_yoffset+20, image_xscale, image_yscale, image_blend, image_alpha);
    draw_sprite(agua2_spr,1,x+5,y)
}

