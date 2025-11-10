if ds_list_find_index(hit_zom,other.id)==-1{
    ds_list_add(hit_zom,other.id)
    
    with(other){
        if (vida>25){
            audio_play_sound(choose(pea_impact_snd,pea_impact2_snd),1,false)
            if control_obj.invisible==false image_alpha=0.5
            repeat(2){part_particles_create(control_obj.part, x, y-irandom(60), control_obj.p19, 2)}
            vida-=25
        }else{
            audio_sound_pitch(audio_play_sound(electricded_snd,1,false),random_range(0.8,1.2))
            instance_create(x,y-60+30*water,destroygrave_obj)
            repeat(15){part_particles_create(control_obj.part, x, y-irandom(60), control_obj.p19, 2)}
            
            event_user(0)
        }
    }
}

//eatfather_obj

