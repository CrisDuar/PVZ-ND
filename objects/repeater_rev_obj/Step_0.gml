event_inherited();

if sprite_index=imgshot{
    if image_index>=8 and disparando=false{
        audio_play_sound(choose(pea_shoot_snd,pea_shoot2_snd), 1, false);

        with(instance_create(x-25,y-40,pea_obj)){
            direction = 180
            spd=10
            spd_max=9
            
            hspd=0
            hspd_max=0
        }
        with(instance_create(x-25,y-40,pea_obj)){
            direction = 180
            spd=18
            spd_max=9
            
            hspd=0
            hspd_max=0
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

