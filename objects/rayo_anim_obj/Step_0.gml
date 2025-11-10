if image_index>=7 and f=false{
    image_speed=0.16
    part_particles_create(control_obj.part, x, y, control_obj.p19, 20)
    if sfx==true audio_play_sound(zapear2_snd,1,false)
    with(instance_create(0,0,fadeout_obj)){
        color=c_white
    }
    if instance_exists(stormctrl_obj){
        audio_sound_pitch(audio_play_sound(thunder_snd,1,false),random_range(0.8,1.3))
        stormctrl_obj.thunderalpha=1
        stormctrl_obj.alpha=0
    }
    
    f=true
    glow_destroy(x,y-35,80,1,1.5)
    
    if obj!=noone{
        with(instance_create(x,y,obj)){
            electro=true
        }
    }
}

if image_index>=image_number-1{
    instance_destroy();
}

