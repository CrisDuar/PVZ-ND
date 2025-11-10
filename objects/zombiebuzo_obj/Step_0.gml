event_inherited();

//SPRITES
if vida>30{
    if comiendo=false{
        sprite_index=buzowalk1_spr
    }else{
        sprite_index=buzoeat1_spr
    }
}else{
    if comiendo=false{
        sprite_index=buzowalk2_spr
    }else{
        sprite_index=buzoeat2_spr
    }
}

if water==true{ 
    if y==garlic_yy and comiendo=false{//BAJAR
        if y_wtr<90 y_wtr++;
        
        if y_wtr==31{create_dirt(1); audio_sound_pitch(audio_play_sound(aguazom_snd,1,false),random_range(0.85,1.15))}
        
        mask_index=nocol_spr
    }else{//SUBIR
        repeat(3){
            if y_wtr>30 y_wtr--;
            if y_wtr==31{create_dirt(1); audio_sound_pitch(audio_play_sound(aguazom_snd,1,false),random_range(0.85,1.15))}
        }
        
        mask_index=sprite_index
    }
    
    if check_zombie_eat(guacodrilo_obj) mask_index=sprite_index
    
    //guacodrilo_obj
    if comiendo == false{//comiendo=false{
        if collision_rectangle(x-sprite_xoffset+90,y-sprite_yoffset+100,x-sprite_xoffset+120,y-sprite_yoffset+160,freeze_obj,false,false){event_perform(ev_collision,freeze_obj)}
        //if collision_rectangle(x-sprite_xoffset+90,y-sprite_yoffset+100,x-sprite_xoffset+120,y-sprite_yoffset+160,podadora_obj,false,false){event_perform(ev_collision,podadora_obj)}
        if collision_rectangle(x-sprite_xoffset+90,y-sprite_yoffset+100,x-sprite_xoffset+120,y-sprite_yoffset+160,globalexplosions_obj,false,false){event_perform(ev_collision,globalexplosions_obj)}
        if collision_rectangle(x-sprite_xoffset+90,y-sprite_yoffset+100,x-sprite_xoffset+120,y-sprite_yoffset+160,squasharea_obj,false,false){event_perform(ev_collision,squasharea_obj)}
        if collision_rectangle(x-sprite_xoffset+90,y-sprite_yoffset+100,x-sprite_xoffset+120,y-sprite_yoffset+160,globalpod_obj,false,false){mask_index=sprite_index}//event_perform(ev_collision,globalpod_obj)}
        if collision_rectangle(x-sprite_xoffset+90,y-sprite_yoffset+100,x-sprite_xoffset+120,y-sprite_yoffset+160,freezesmall_obj,false,false){event_perform(ev_collision,freezesmall_obj)}
    }
    
}else{
    if y_wtr==29{create_dirt(1); audio_sound_pitch(audio_play_sound(aguazom_snd,1,false),random_range(0.85,1.15))}
    if y_wtr>0 y_wtr--;
    
    mask_index=sprite_index
}



