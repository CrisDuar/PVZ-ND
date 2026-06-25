event_inherited();

if sprite_index=imgshot{
    if image_index>=8 and disparando=false{
        audio_play_sound(choose(pea_shoot_snd,pea_shoot2_snd), 1, false);
        if disfraz==1{
            instance_create(x+25,y-40,pea_obj)
        }else{
            instance_create(x+25,y-40,pea_obj)
            with(instance_create(x+25,y-40,pea_obj)){spd=18}
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

