peanut_update();
event_inherited();

if sprite_index==imgshot{
    if image_index>=3 and disparando=false{
        audio_play_sound(choose(pea_shoot_snd,pea_shoot2_snd), 1, false);
        
        with(instance_create(x,y-50,pea_obj)){yy=25}
        with(instance_create(x,y-50,pea_obj)){hspd=18}
        disparando=true
    }
    
    if image_index>=image_number-0.5{
        sprite_index=imgidle
        image_index=4
        image_speed=0.16
        disparando=false
    }
}



