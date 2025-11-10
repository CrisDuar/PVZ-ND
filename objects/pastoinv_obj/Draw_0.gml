/// @description Draw plants, zombies and shovel
var wh_rect = false

if (control_obj.multijugador==false and os_type==os_android) wh_rect = true

if (canplant){
    
    if (able_plant != 0){
    
        draw_unit(0);
        if (wh_rect) draw_tile_selection()
    }
    
    if (able_zombie != 0){
        draw_unit(1);
        if (wh_rect) draw_tile_selection()
    }
    
    if (control_obj.pala and hover == 1) draw_tile_selection()
}

