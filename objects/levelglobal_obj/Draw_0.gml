draw_self();
draw_set_font(niveles_fnt)
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if (raton) draw_sprite_outlined(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,c_white)

if (global.progress[? cond] >= num){

    draw_text_ext_colour(x-6 + num_x,y-55 + num_y, string_hash_to_newline(numdisplay), 0, 20, _c, _c, _c, _c, 1)
    if (variable_global_get(cond) > num) draw_sprite(medal_spr,0,x+22, y-17)

}else{
    draw_sprite_ext(candadoanim_spr, a2, x, y-45, image_xscale, image_yscale, 0, c_white, 1)
}

