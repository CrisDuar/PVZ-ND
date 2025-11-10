event_inherited();
depth=(-y+5)+(x/150)

if sprite_index=imgshot{
    if image_index>=4 and disparando=false{
        audio_play_sound(choose(pea_shoot_snd,pea_shoot2_snd), 1, false);
        
        var zom = get_target_lobbed(x,y,maxdistance)
        
        with(instance_create(x,y - 120,cabbage_obj)){
            obj = zom;
            y3_h = -80
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


