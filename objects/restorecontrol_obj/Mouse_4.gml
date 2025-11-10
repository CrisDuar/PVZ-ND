if !instance_exists(fadeout_obj){
    with(controls_obj){
        def_key = restore_key//og_key
        ch_key = false
        sh = 0
    }
    audio_play_sound(aceptoption_snd,1,false)
    
    save_game();
}

