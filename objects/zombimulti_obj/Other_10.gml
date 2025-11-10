//PLANTING

if global.vs_mtouch[type] == false or (connected){
    if (connected){
        if gamepad_button_check_pressed(variable_global_get(var_str), gp_face1){with(instance_nearest(x,y,pastoinv_obj)){tile_set_zombie()}; scale=0.8}
    }else{
        if keyboard_check_pressed(global.z_place){with(instance_nearest(x,y,pastoinv_obj)){tile_set_zombie()}; scale=0.8}
    }
}else{
    if os_type==os_windows{
        if mouse_check_button_released(mb_left) and t_plant<1 and point_in_rectangle(mouse_x,mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom)
        and point_distance(x, y, xx_place, yy_place) < 45{
            with(instance_nearest(x,y,pastoinv_obj)){tile_set_zombie()}; scale=0.8
        }
    }
}

event_inherited();

