event_inherited();
if vida>30{
    if is_splashing=true{sprite_index=duckysplash1_spr}
    else if comiendo=true{sprite_index=duckyeat1_spr}
    else{sprite_index=duckywalk1_spr}
}else{
    if is_splashing=true{sprite_index=duckysplash2_spr}
    else if comiendo=true{sprite_index=duckyeat2_spr}
    else{sprite_index=duckywalk2_spr}
}

//chapoteos
//ataque
if water==false{
    walkspeed=-0.25
    imagespeed1=0.18//eat
    is_splashing=false
    splash=false
}else{
    walkspeed=-0.35
    imagespeed1=0.2
}

if time>0 and water==true and stop=false{
    time-=1+(motivated*2)
}

if time<=0{
    if is_splashing=false{
        time=7*room_speed;
        is_splashing=true;
    }else{
        time=random_range(10,18)*room_speed;
        is_splashing=false
    }
    image_index=0
}

if is_splashing==true{
    if instance_exists(charco0_obj){
        with(charco0_obj){
            if collision_rectangle(other.x-80,other.y-100,other.x+80,other.y+100,self,false,false){
                if image_alpha<1{
                    image_alpha+=0.008
                }else{
                    xs+=0.004
                    ys+=0.004
                    alpha+=0.004
                }
            }
        }
    }
    hspeed=0
    caneat=false
    if ((image_index>0 and image_index<1) or (image_index>5 and image_index<6)) and splash=false{
        splash=true
        create_dirt(1)
        audio_sound_pitch(audio_play_sound(aguazom_snd,1,false),random_range(0.75,1.25))
        
        with(pastoinv_obj){
            if collision_rectangle(other.x-80,other.y-100,other.x+80,other.y+100,self,false,false)
            and water=false
            and distance_to_object(charco_obj)>0
            and distance_to_object(charco0_obj)>0
            and distance_to_object(animgrave_obj)>0
            and distance_to_object(saveseedcasilla_obj)>10
            and distance_to_object(sunmachine_obj)>0
            and distance_to_object(poisontile_obj)>0
            and distance_to_object(gravedetect_obj)>0{
                var c = irandom(100)
                if c<40 {with(instance_create(x,y+30-offset,charco0_obj)){image_alpha=0}}
            }
        }
    }
    
    if (image_index>=1 and image_index<=5) or image_index>=10{
        splash=false
    }
}else{
caneat=true
splash=false
}

