if sprite_index==icelettuce4_spr{
    vida=maxhp

    if image_index>=7 and snd=false{
        snd=true
        audio_play_sound(icelettuce_snd,1,false)
    }
    
    if image_index>image_number-1{
        //instance_create(x,y,freezesmall_obj)
        
        with(eatfather_obj){
            if collision_rectangle(other.x-60, other.y, other.x+60, other.y+27, self, true, false){
                event_perform(ev_collision,freezesmall_obj)
            }
        }
        
        instance_create(x,y-30,destroygrave_obj)
        with(instance_create(x,y,luzcafe_obj)){sprite_index=luzicelettuce_spr}
        
        part_particles_create(control_obj.part, x, y-40, control_obj.p20, 10);
        //ghost_obj
        vida = 0;
    }
}else{
    if image_index>image_number-1{
        if sprite_index==icelettuce1_spr{
            var a = irandom(100)
            
            if a<5{
                sprite_index=icelettuce3_spr
            }else if a<25{
                sprite_index=icelettuce2_spr
            }else{
                sprite_index=icelettuce1_spr
            }
        }else{
            sprite_index=icelettuce1_spr
        }
    }
}

