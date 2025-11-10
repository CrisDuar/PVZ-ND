if (instance_exists(origin)){ 
    _tile = instance_nearest(origin.x,origin.y-10, pastoinv_obj)
    if (_tile) draw_sprite_ext(saveseedcasilla_spr, control_obj.night, _tile.x, _tile.y, _tile.image_xscale, _tile.image_yscale, 0, c_white, 1)
}

