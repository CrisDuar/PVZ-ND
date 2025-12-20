//PLANTING
if global.vs_mtouch[type] == false or (connected){
    if (connected){
        if gamepad_button_check_pressed(variable_global_get(var_str), gp_face1){with(instance_nearest(x,y,pastoinv_obj)){tile_set_plant()}; scale=0.8}
        if gamepad_button_check_pressed(variable_global_get(var_str), gp_face2){
            audio_play_sound(pala_snd,1,false)
            with(instance_nearest(x,y,pastoinv_obj)){tile_shovel()}
			scale=0.8;
        }
        if gamepad_button_check_pressed(variable_global_get(var_str), gp_face3){event_user(1)}
    }else{
        if keyboard_check_pressed(global.p_place){with(instance_nearest(x,y,pastoinv_obj)){tile_set_plant()}; scale=0.8}
        if keyboard_check_pressed(global.p_remove){
            audio_play_sound(pala_snd,1,false)
            
            with(instance_nearest(x,y,pastoinv_obj)){
                tile_shovel();
				scale=0.8;
            }
        }
        if keyboard_check_pressed(global.p_action){event_user(1)}
    }
}else{//MULTI TOUCH
    if os_type==os_windows{
		
		//if mouse on the hitbox
		if (point_in_rectangle(mouse_x,mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom)){
		
			if mouse_check_button_released(mb_left)
			and t_plant<1
	        and point_distance(x, y, xx_place, yy_place) < 45{
            
	            if (control_obj.seleccionado!=12 or distance_to_object(garlicdrone_obj)<10) event_user(1)
            
	            with(instance_nearest(x,y,pastoinv_obj)){tile_set_plant()};
				scale=0.8;
	        }
			
			
			if mouse_check_button_pressed(mb_right) {
				tile_shovel();
				scale=0.8;
			}
		}
		
		
        /*
        if mouse_check_button(mb_left) and point_in_rectangle(mouse_x,mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom) and t_spd == 0 and t_ableshovel = true
        and point_distance(x, y, xx_place, yy_place) < 45{
            if t_shovel == 0 audio_play_sound(pala_snd,1,false)
            t_shovel += 0.5
        }else{
            t_shovel=-5
        }*/
    }
    
    if point_distance(x, y, xx_place, yy_place) >= 45{//abs(ref_x-x)>10 or abs(ref_y-y)>10{
        t_ableshovel = false
    }
    
    if t_shovel>=20{
        audio_play_sound(pala_snd,1,false)
        with(instance_nearest(x,y,pastoinv_obj)){tile_shovel()}
        t_shovel = -5
        t_ableshovel = false
    }
}

event_inherited();

