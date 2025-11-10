if !instance_exists(fadeout_obj) and drag_t>0{
    if variable_global_get(cond)>=num{
        audio_play_sound(aceptoption_snd,1,false)
        room_goto(lvl)
    }
    else{
        audio_play_sound(errorseed_snd,1,false)
        candadotemblando=true
    }
}

