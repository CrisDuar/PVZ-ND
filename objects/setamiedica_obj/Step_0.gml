event_inherited();
depth=-y+30

if sleep==false{
    if state!=0{
        cadencia=0
    }else{
        cadencia=1
    }
    
    if sprite_index=imgshot{
        if image_index>=5 and disparando=false and state=0{
            audio_play_sound(choose(puff1_snd,puff2_snd), 1, false);
            with(instance_create(x+20,y-40,sporepuff_obj)){yy=10}
            
            disparando=true
        }
        
        if image_index>=image_number-0.5{
            sprite_index=imgidle
            image_index=2
            image_speed=0.16
            disparando=false
        }
    }
    
    
    
    if (collision_circle(x, y-30, 125, eatfather_obj, true, false) and distance_to_object(pumpkin_obj)>0){//si tiene un zombi cerca
        if state=0{
            disparando=false
            state=1
            image_index=0
            sprite_index=setamiedica2_spr//empieza animacion de esconderse
        }
    }else{// si el zombi está lejos
        if state=2 and sprite_index=setamiedica3_spr{
            state=3
            sprite_index=setamiedica5_spr//empieza animacion de salir
            image_index=0
        }
    }
    
    
    if image_index>=9.2 and sprite_index=setamiedica2_spr{// animacion de esconderse
        sprite_index=setamiedica3_spr
        state=2
    }
    
    
    if image_index>=9.2 and sprite_index=setamiedica5_spr and state=3{// animacion de salir
        sprite_index=setamiedica1_spr
        state=0
    }
}else{
    sprite_index=setamiedicasleep_spr
}

