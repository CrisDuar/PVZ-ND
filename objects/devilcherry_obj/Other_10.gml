if (global.videoq > 0) part_particles_create(control_obj.part, x+random_range(-3,3), y+random_range(-3,3), control_obj.p5, 3)
audio_sound_pitch(audio_play_sound(nightshade2_snd,1,false),random_range(0.8,1.2))
create_explosion(x,y,7,1.7,0.4,-1,0,5)

if instance_exists(obj){
    if object_get_parent(obj.object_index) == eatfather_obj
    or object_get_parent(obj.object_index) == eatfather_shield_obj{
        with(obj){
            vida-=20
            if control_obj.invisible==false image_alpha=0.5
            if (gooptime<room_speed*5) gooptime=room_speed*5
            if (goopstun<room_speed*2) goopstun=room_speed*2
            
        }
    }else{
        with(obj){
            vida-=20
            image_alpha=0.5;
        }
    }
}

instance_destroy();

