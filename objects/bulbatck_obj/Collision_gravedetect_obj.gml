if ds_list_find_index(hit_zom,other.id)==-1
and image_alpha>=0.9{
    audio_play_sound(bulbopimact_snd,0.8,false)
    ds_list_add(hit_zom,other.id)
    image_alpha=0.35
    switch(direction){
        case 0:
            direction=choose(45, 330)
        break
                
        case 330:
            direction=45
        break
                
        case 45:
            direction=330
        break
    }
    with(other){
        event_perform(ev_collision,bulbatck2_obj)
    }
}

