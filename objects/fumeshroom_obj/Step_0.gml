event_inherited();
depth=(-y+5)+(x/150)

if sleep==false{
if sprite_index==imgshot
and global.gameover==false{
    if image_index>=8
    and disparando=false{
        audio_sound_pitch(audio_play_sound(fume1_snd, 0.3, false),random_range(0.9,1.1))
        instance_create(x+32,y-35,fumeatack_obj)
        disparando=true
    }
    
    if image_index>=image_number-0.5{
        sprite_index=imgidle
        image_index=0
        image_speed=0.16
        disparando=false
    }
}

if sprite_index=imgshot and image_index>9 and image_index<17 and global.gameover==false{
    //instance_create(x+56+random_range(-4,4),y-40+random_range(-4,7),fumeparticle_obj)
    part_particles_create(control_obj.part, x+56+random(4), y-40+random_range(-4,7), control_obj.p17, 1);
}
}else{
sprite_index=fumeshroom3_spr
}

