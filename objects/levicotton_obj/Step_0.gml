event_inherited();

if sprite_index=imgshot{
    if image_index>=4 and disparando=false{
        audio_play_sound(choose(pea_shoot_snd,pea_shoot2_snd), 1, false);
    
        var type;
        var sheep=false;
        
        if disfraz==1{///COSTUME SHEPHERD
            sheep=true
        
            if ct<2 or ct == 4{
                type=0
            }else if ct<4{
                type=1
            }else{
                type=2
            }
            
            if cadencia==0.125 cadencia=5 else cadencia=0.125
            
            ct++
            if ct>5 ct = 0;
        }else{///NORMAL
            if ct<5{
                type=0
            }else if ct<7{
                type=1
            }else{
                type=2
            }
            
            ct++
            if ct>7 ct = 0;
        }
        
        with(instance_create(x+25,y-40,cotton_obj)){
            image_index=type
            
            if sheep=true sprite_index = cotton2_spr
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


