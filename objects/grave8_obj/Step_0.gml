if vida<=0{
    
    //Freeze Plants
    audio_play_sound(icelettuce_snd,1,false)
    audio_play_sound(zombifrost_snd,1,false)
    with(instance_create(0,0,fadeout_obj)){color=c_white}
    part_particles_create(control_obj.part, x, y-40, control_obj.p20, 30);

    with(typeplant2_obj){
        if (timefreeze<60*15) timefreeze=60 * random_range(8, 15)
    }
    
    //Freeze Zombies
    if instance_exists(eatfather_obj){
        with(eatfather_obj){ 
            if (timecongelado<60*8) timecongelado=60 * random_range(8, 15);
        }
        
    }
    
    if instance_exists(molotov_obj){
        with(molotov_obj){fire = false}
    }
    
    if instance_exists(parentpea_obj){
        with(parentpea_obj){event_perform(ev_collision,freeze_obj)}
    }
    
    
}

event_inherited();