if global.lang == "es" str = str_es else str = str_en;

if (point_in_rectangle(mouse_x, mouse_y, x - 27, y - 27, x + 34 + width, y + 27)){
    image_index = 1
    color = c2;
    
    if (mouse_check_button_pressed(mb_left)){
        audio_play_sound(seleccionarplantas_snd,1,false)
        instance_create(0,0,fadeout_obj)
        if gj_user_isloggedin(){
            __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (1088*2) )
        }else{
            __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (1088) )
        }
    }
    
}else{
    image_index = 0
    color = c1;
}

