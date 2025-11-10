if global.iniciogame=false{
    image_alpha=0
}else{
    image_alpha=1
    event_user(0)
    
    var _tile = instance_nth_nearest(tile_x, tile_y, multi_obj, 2)

    if _tile.tile_x == tile_x and _tile.tile_y == tile_y{
        sprite_index=spr2
    }else{
        sprite_index=spr1
    }

}

if scale<1 scale+=0.05

