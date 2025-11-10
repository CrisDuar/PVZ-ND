event_inherited();
if glow<360{
    glow+=0.5
}else{
    glow=0
}

if halo<360{
    halo+=2
}else{
    halo=0
}

if glow_alpha<1 glow_alpha+=0.05


if instance_exists(boss3_obj){
    if boss3_obj.dark_lph>=1 and boss3_obj.dark_fase<3{
        if explo==false{
            audio_play_sound(plantern2_snd,1,false)
            explo=true
            sprite_index=plantern2_spr
            image_index=0
        }    
       
        if image_index>image_number-1{
            audio_stop_all();
            with(instance_create(0,0,fadeout_obj)){color=c_white}
            
            with(eatfather_obj){
                if timestop<room_speed*10 and object_index!=boss3_obj{timestop=room_speed*10}
                
                if (object_index == cursedmask_obj){
                    instance_create(x,y-60,destroygrave_obj)
                    zombiedrop(false);
                    instance_destroy();
                }
            }
            
            boss3_obj.dark_time=60*25
            boss3_obj.dark_lph=0
            audio_sound_pitch(audio_play_sound(darkpain_snd,1,false),random_range(0.8,1.2))
            audio_play_sound(plantern3_snd,1,false)
            
            part_particles_create(control_obj.part, x, y-40, control_obj.p23, 30);
            instance_destroy();
        }
    }
}

