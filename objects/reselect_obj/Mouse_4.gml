if ready=true and alarm[0]<=-1 and global.playerReady==false and !instance_exists(lock_selection_obj){
    audio_play_sound(aceptoption_snd,1,false)
    with(deleteselect_obj){event_perform(ev_other,ev_user0)}
    alarm[0]=room_speed*0.25
}else{
    audio_play_sound(errorseed_snd,1,false);
}

