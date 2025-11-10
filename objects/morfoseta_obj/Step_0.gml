event_inherited();

if sleep==false{
    if sprite_index=imgshot{
        if image_index>=5 and disparando=false{
            audio_sound_pitch(audio_play_sound(morfo1_snd, 0.3, false),random_range(0.9,1.1))
            instance_create(x+25,y-40,morfo_obj)
            disparando=true
        }
            
        if image_index>=image_number-0.5{
            sprite_index=imgidle
            image_index=2
            image_speed=0.16
            disparando=false
        }
    }
}else{
    sprite_index=morfoseta3_spr
}

