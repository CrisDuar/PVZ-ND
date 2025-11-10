x=device_mouse_x(touch)
y=device_mouse_y(touch)

//MOUSE_PRESSED

if act==false{
    act=true
    
    pointer = instance_position(x, y, multi_obj);
    
    if pointer!=noone{  
        with(pointer){
            if global.vs_mtouch[type]{
                mt_move = true
                t_ableshovel = true
                xx_place = x
                yy_place = y
            }else{
                other.pointer=noone
            }
        }
   } 
    
    seed_packet = instance_position(x, y, menuparent_obj);
    
    if device_mouse_x(touch) != mouse_x and device_mouse_y(touch) != mouse_y{
        if seed_packet!=noone{
            with(seed_packet){
                event_perform(ev_mouse, ev_left_press)
            }      
        }
    }
}
//MOUSE BUTTON

with(pointer){
    if global.vs_mtouch[type] multi_movement(mt_move, other.x, other.y)
    if t_plant<1 t_plant+=0.025
    
    if type==0{
        if mouse_check_button(mb_left) and point_in_rectangle(other.x, other.y, bbox_left, bbox_top, bbox_right, bbox_bottom) and t_spd == 0 and t_ableshovel = true{
            if t_shovel == 0 audio_play_sound(pala_snd,1,false)
            t_shovel += 0.5
        }else{
            t_shovel=-5
        }
    }
}

if device_mouse_check_button_released(touch, mb_any){
    if pointer!=noone{
    
        with(pointer){
        
            if type==0{
                if t_plant<1 and point_in_rectangle(other.x, other.y, bbox_left, bbox_top, bbox_right, bbox_bottom)
                and point_distance(x, y, xx_place, yy_place) < 45{
                    if (control_obj.seleccionado!=12 or distance_to_object(garlicdrone_obj)<10) event_user(1)
                    
                    with(instance_nearest(x,y,pastoinv_obj)){tile_set_plant()}; scale=0.8
                }
            }else{
                if t_plant<1 and point_in_rectangle(other.x, other.y, bbox_left, bbox_top, bbox_right, bbox_bottom)
                and point_distance(x, y, xx_place, yy_place) < 45{
                    with(instance_nearest(x,y,pastoinv_obj)){tile_set_zombie()}; scale=0.8
                }
            }
        
            mt_move = false
            t_plant = 0
        }
    }

    instance_destroy();
}

