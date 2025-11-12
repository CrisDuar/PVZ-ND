draw_sprite(sprite_index, image_index, (x + sprite_get_xoffset(sprite_index)) - offset_x, (y + sprite_get_yoffset(sprite_index)) - offset_y);

if locked==buzon1_spr{
    if enter==true and (global.progress[? cond] > lvl){
        draw_sprite_ext(flechaseleccion_spr,image_index, x, y-80, 1, 1, 0, c_white, 1)
    }
}else if locked!=bloqmap_spr 
and locked!=randomlocked_spr 
and locked!=bloqplant3_spr
and locked!=bloqplant5_spr
and locked!=bloqplant8_spr
and locked!=bloqplant10_spr
{
    if (global.progress[? cond] <= lvl){
        draw_sprite(bloqplant0_spr, 0, (x + sprite_get_xoffset(sprite_index)) - offset_x, (y + sprite_get_yoffset(sprite_index)) - offset_y);
    }
}

