if !instance_exists(gamepadconfig_obj){

    if mouse_check_button(mb_left){
        if vol1 controlmenu_obj.volevel = clamp((mouse_x-btn[6,0])/(btn[6,2]-btn[6,0])*100,0,100)
        if vol2 controlmenu_obj.sfxvol = clamp((mouse_x-btn[7,0])/(btn[7,2]-btn[7,0])*100,0,100)
        if vol3 controlmenu_obj.musicvol = clamp((mouse_x-btn[8,0])/(btn[8,2]-btn[8,0])*100,0,100)
        
        //EXIT
        if point_in_rectangle(mouse_x,mouse_y,btn[4,0],btn[4,1],btn[4,2],btn[4,3]) and prss_ext == true{
            //and ((room!=survival1_rm and room!=survival2_rm) or global.iniciogame=false or survcontrol_obj.current_progress<=0){
            if !audio_is_playing(hold_snd) snd_ext=audio_play_sound(hold_snd,1,false)
            if hold_ext<14{
                hold_ext+=0.16
            }else{
                audio_stop_all();
                room_goto(global.selectionRoom)
            }
        }else{
        
            audio_stop_sound(snd_ext)
            hold_ext=0
            prss_ext = false
        }
        
        //RESTART
        if point_in_rectangle(mouse_x,mouse_y,btn[5,0],btn[5,1],btn[5,2],btn[5,3]) and prss_rst == true{
            //and ((room!=survival1_rm and room!=survival2_rm) or global.iniciogame=false or survcontrol_obj.current_progress<=0){
            if !audio_is_playing(hold_snd) snd_rst=audio_play_sound(hold_snd,1,false)
            if hold_rst<14{
                hold_rst+=0.16
            }else{
                audio_stop_all();
                room_restart();
            }
        }else{
        
            audio_stop_sound(snd_rst)
            hold_rst=0
            prss_rst = false
        }
    }else{
    
        if (hold_ext <= 4 and hold_ext > 0 and ext_guide <= 0) ext_guide = 180;
        if (hold_rst <= 4 and hold_rst > 0  and rst_guide <= 0) rst_guide = 180;
        
        audio_stop_sound(snd_rst)
        audio_stop_sound(snd_ext)
        hold_ext=0
        hold_rst=0
        prss_rst = false
        prss_ext = false
        
        vol1=false
        vol2=false
        vol3=false
    }
    
    if mouse_check_button_pressed(mb_left){
        //SET LANGUAGE TO ENGLISH
        //if point_in_rectangle(mouse_x,mouse_y,x-40-44,y-45-15,x-40,y+15-45){
        if point_in_rectangle(mouse_x,mouse_y,btn[0,0],btn[0,1],btn[0,2],btn[0,3]){
            audio_play_sound(aceptoption_snd,1,false)
            global.lang="en"
        }
        //SET LANGUAGE TO SPANISH
        if point_in_rectangle(mouse_x,mouse_y,btn[1,0],btn[1,1],btn[1,2],btn[1,3]){
            audio_play_sound(aceptoption_snd,1,false)
            global.lang="es"
        }
        
        //FULLSCREEN
        if os_type!=os_android{
            if point_in_rectangle(mouse_x,mouse_y,btn[2,0],btn[2,1],btn[2,2],btn[2,3]){
                audio_play_sound(aceptoption_snd,1,false);
                window_set_fullscreen(!window_get_fullscreen());
            }
        }
        //EXIT AND RESTART ACTIVATE
        if point_in_rectangle(mouse_x,mouse_y,btn[4,0],btn[4,1],btn[4,2],btn[4,3]){
            prss_ext = true
        }
        
        if point_in_rectangle(mouse_x,mouse_y,btn[5,0],btn[5,1],btn[5,2],btn[5,3]){
            prss_rst = true
        }
        
        //BARRA DE VOLUMEN
        if point_in_rectangle(mouse_x,mouse_y,btn[6,0],btn[6,1],btn[6,2],btn[6,3]){
            vol1=true
            vol2=false
            vol3=false
        }else if point_in_rectangle(mouse_x,mouse_y,btn[7,0],btn[7,1],btn[7,2],btn[7,3]){
            vol1=false
            vol2=true
            vol3=false
        }else if point_in_rectangle(mouse_x,mouse_y,btn[8,0],btn[8,1],btn[8,2],btn[8,3]){
            vol1=false
            vol2=false
            vol3=true
        }
        
    }
    
    if mouse_check_button_released(mb_left){
        //RESUME THE GAME
        if point_in_rectangle(mouse_x,mouse_y,btn[3,0],btn[3,1],btn[3,2],btn[3,3]){
            audio_resume_all();
            instance_activate_all();
            instance_destroy();
        }
    }
}


//Indicación para reiniciar o salir



if (rst_guide > 0){

    if (rst_lph < 1) rst_lph += 0.05;
    rst_guide--
    
}else{
    
    if (rst_lph > 0) rst_lph -= 0.05;
}

if (ext_guide > 0){

    if (ext_lph < 1) ext_lph += 0.05;
    ext_guide--

}else{
    
    if (ext_lph > 0) ext_lph -= 0.05;
}


