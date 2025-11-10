event_inherited();
depth=(-y+5)+(x/150)

if (butter){  
    if (sprite_index = imgshot) sprite_index = atkkernel2_spr;
    if (sprite_index = imgidle) sprite_index = idlekernel2_spr;
    
    imgshot = atkkernel2_spr;
    imgidle = idlekernel2_spr;
}else{
    if (sprite_index = imgshot) sprite_index = atkkernel1_spr;
    if (sprite_index = imgidle) sprite_index = idlekernel1_spr;
    
    imgshot = atkkernel1_spr;
    imgidle = idlekernel1_spr;
}

if sprite_index=imgshot{
    if image_index>=4 and disparando=false{
        audio_play_sound(choose(pea_shoot_snd,pea_shoot2_snd), 1, false);
        
        var zom = get_target_lobbed(x, y, maxdistance)
       
        if (butter){ 
            with(instance_create(x,y - 120, butter_obj)){
                obj = zom;
                y3_h = -80
            }
        }else{
            with(instance_create(x,y - 120,parentlobbed_obj)){
                obj = zom;
                y3_h = -80
                damage = 10;
                sprite_index = kernel_spr
                broke=-1
                particle=-1
            }
        }
        
        disparando=true
        
        var _zomdist = 1800
        
        if (instance_exists(zom)) _zomdist = zom.x;
        
        butter = butter_calc(abs(x - _zomdist));
    }
    
    if image_index>=image_number-0.5{
        sprite_index=imgidle
        image_index=0
        image_speed=0.16
        disparando=false
    }
}


