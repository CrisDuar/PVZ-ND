event_inherited();
timefreeze=0

if sprite_index=imgshot{
    if image_index>=8 and disparando=false{
        audio_play_sound(choose(pea_shoot_snd,pea_shoot2_snd), 1, false);
        audio_sound_pitch(audio_play_sound(icepeashot_snd, 1.1, false),random_range(0.8,1.2));
        if disfraz==1{
            instance_create(x+25,y-40,icepea2_obj)
        }else{
            instance_create(x+25,y-40,icepea_obj)
        }
        disparando=true
    }
    
    if image_index>=image_number-0.5{
        sprite_index=imgidle
        image_index=0
        image_speed=0.16
        disparando=false
    }
}

