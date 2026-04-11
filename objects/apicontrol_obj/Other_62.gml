if os_is_network_connected() and (room == menu_rm_){
    if data_import==0{
        if gj_result_id() = login{
            if gj_result_status() == 1{
                gj_session_open();
                gj_session_ping(true);
                data_import=1
                alarm[0]=60*3
                if __view_get( e__VW.XView, 0 )>=1088{
                    instance_create(0,0,fadeout_obj)
                    __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (1088) )
                    audio_play_sound(coffee_snd,1,false);
                }
                with(textbox_obj){
                    if id_var="username"{
                        str=""
                    }
                    
                    if id_var="token"{
                        str=""
                    }
                }
                
                instance_destroy(loadbutton_obj)
                instance_create(4224,568,loadbutton_obj)   
            }else if gj_result_status() == 0{
                login=-1
                //show_error(gj_result_error(),false)
                if __view_get( e__VW.XView, 0 )>=1088{
                    audio_play_sound(errorseed_snd,1,false);
                    if instance_exists(damage_obj) instance_destroy(damage_obj)
                    with(instance_create(login_obj.x,login_obj.y-40,damage_obj)){
                        if global.lang="en"{value="Incorrect username or token."}
                        else{value="Nombre de usuario o token incorrecto."}
                    }
                }
            }else{
                login=-1
                if __view_get( e__VW.XView, 0 )>=1088{
                    //show_error(gj_result_error(),false)
                    if instance_exists(damage_obj) instance_destroy(damage_obj)
                    audio_play_sound(errorseed_snd,1,false);
                    with(instance_create(login_obj.x,login_obj.y-40,damage_obj)){
                        if global.lang="en"{value="Game Maker error. Try again."}
                        else{value="Error de Game Maker. Intenta otra vez."}
                    }
                }
                //show_error("error GMS", true)
            }
        }
    }else{
        var result = gj_result_id();
        
        if result == http_data[1]{
            if gj_result_status(){
                username=gj_result_data_field("username")
            }
        }
    }
    gj_result_clear();
}

