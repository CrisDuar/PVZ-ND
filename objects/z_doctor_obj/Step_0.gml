event_inherited();
if explo==true comiendo=false

if vida>30{
    if explo=true{
        sprite_index=zombidoctoresp1_spr
    }else{
        if comiendo=false{
            sprite_index=zombidoctor1_spr
        }else{
            sprite_index=zombidoctoreat1_spr
        }
    }
    
}else{
    if explo=true{
        sprite_index=zombidoctoresp2_spr
    }else{
        if comiendo=false{
            sprite_index=zombidoctor2_spr
        }else{
            sprite_index=zombidoctoreat2_spr
        }
    }
}

if explo=true{

    if floor(image_index)==22 and throwed==false{
        throwed=true
        with(instance_create(x-49,y-40,healproj_obj)){
            doctor = other.id
        }
        
        
        audio_sound_pitch(audio_play_sound(jump8bit_snd,1,false),random_range(0.8,1.2))
        audio_play_sound(pophead_snd,1,false)
    }
    
    if image_index>image_number-1
    or ((distance_to_object(animgrave_obj)<=10 or distance_to_object(gravedetect_obj)<=10 or distance_to_object(crater1_obj)<=10 or distance_to_object(caja_obj)<=10) and throwed==false){
    
        t=max_t//15*room_speed  
        walkspeed=-0.25
        caneat=true
        throwed=false
        explo=false
    }
}

if (vida<=0 or global.nivelterminado=true) and soltarproteccion=false{
    soltarproteccion=true
    drop(x,y-40+30*water, healdrop_spr, 0, false, image_blend, y, depth+10)
}

if x<=1115 and t>0 and stop==false and amount>0 and global.gameover=false{t--}

if t<=0 and explo=false{
    if distance_to_object(animgrave_obj)>10
    and distance_to_object(gravedetect_obj)>10
    and distance_to_object(crater1_obj)>10
    and distance_to_object(caja_obj)>10{
    
        comiendo=false
        caneat=false
        walkspeed=0
        explo=true
        image_index=0
    }
}

