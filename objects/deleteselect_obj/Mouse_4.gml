if ready=true{
    audio_play_sound(delete_snd,1,false)
    if instance_exists(select_obj){
        with(selectanim_obj){event_perform(ev_mouse,ev_left_press)}
        delete_costumes();
    }
}else{
    audio_play_sound(errorseed_snd,1,false);
}

