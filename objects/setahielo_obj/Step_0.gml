event_inherited();

if sleep=false{time++}

if time>60*1.5{
    audio_play_sound(zombifrost_snd,1,false)
    with(instance_create(0,0,fadeout_obj)){color=c_white}
    if instance_exists(eatfather_obj){
        with(eatfather_obj){event_perform(ev_collision,freeze_obj)}
    }
    
    if instance_exists(molotov_obj){
        with(molotov_obj){fire = false}
    }
    
    if instance_exists(parentpea_obj){
        with(parentpea_obj){event_perform(ev_collision,freeze_obj)}
    }
    
    part_particles_create(control_obj.part, x, y-40, control_obj.p20, 30);
    vida = 0
}

timefreeze=0

