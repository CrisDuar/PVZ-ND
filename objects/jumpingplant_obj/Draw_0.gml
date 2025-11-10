var _col = image_blend

if _timefreeze>0{
    _col = c_frost
}
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,_col,image_alpha)

if (_costume_img != -1){
    
    draw_sprite_ext(_costume_img,image_index,x,y,image_xscale,image_yscale,image_angle,_col,image_alpha)
}

