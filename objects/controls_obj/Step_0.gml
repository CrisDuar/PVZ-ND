if og_key==noone{
    og_key = def_key
}

if def_key!=noone{
    temp_key = def_key
    
    if ch_key=false{
        variable_global_set(ctrl, def_key)
    }
}

if ch_key == true{
    if keyboard_check_pressed(vk_anykey){
        var proceed = true
        
        with(controls_obj){
            if def_key==keyboard_lastkey proceed=false
        }
    
        if key_to_string(keyboard_lastkey)!="NA" and proceed==true{
            def_key = keyboard_lastkey;
            ch_key = false
            sh=0
        }else{
            audio_play_sound(errorseed_snd,1,false);
        }
    }
}

if instance_exists(fadeout_obj){
    def_key = temp_key
    ch_key = false
    sh = 0
}

if instance_exists(gamepadconfig_obj){
    def_key = temp_key
    ch_key = false
    sh = 0
}else{
    if type==0{
        if global.gamepad_plant==-1 and global.vs_mtouch[type] = false{
            visible=true
        }else{
            visible=false
        }
    }else{
        if global.gamepad_zombie==-1 and global.vs_mtouch[type] = false{
            visible=true
        }else{
            visible=false
        }
    }/*

    if (type==0 and global.gamepad_plant!=-1)
    or (type==1 and global.gamepad_zombie!=-1){
        visible=false
    }else{
        visible=true
    }*/
}

if keyboard_check(def_key){
    image_xscale=0.95
    image_yscale=0.95
}else{
    image_xscale=1
    image_yscale=1
}

/* */
/*  */
