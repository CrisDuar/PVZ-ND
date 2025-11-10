if global.lang == "es" str = str_es else str = str_en;

if (point_in_rectangle(mouse_x, mouse_y, x - 27, y - 27, x + 34 + width, y + 27)){
    image_index = 1
    color = c2;
    
    if (mouse_check_button_pressed(mb_left)){
        audio_play_sound(seleccionarplantas_snd,1,false)
        global.settings_sec = section
        room_goto(settings_rm)
    }
    
}else{
    image_index = 0
    color = c1;
}

