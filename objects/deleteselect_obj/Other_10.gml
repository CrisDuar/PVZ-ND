if ready=true{
    audio_play_sound(delete_snd,1,false)
    if instance_exists(select_obj){
        with(selectanim_obj){event_perform(ev_other,ev_user0)}
        select_obj.ocupied=0
        delete_costumes();
    }
}

