if (ds_list_find_index(hit_zom,other.id)==-1 and bounce_t == 0){
    audio_play_sound(bulbopimact_snd,0.8,false)
    ds_list_add(hit_zom,other.id)
    
	do_bounce();
	on_collision();
	
    with(other){
        event_user(0)
    }
}