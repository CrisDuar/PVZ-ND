event_inherited();

//Subir y bajar
if up<360 up++ else up=0
yy = 5*sin(degtorad(up))
if global.gameover==false{
    switch(state){
        case 0:
            sprite_index=ghostpepper1_spr
            
            if _atk_t>0{
                _atk_t--
            }else{
                _atk_t=room_speed
                
                var _atk = false
                
                with(eatfather_obj){
                    if point_in_rectangle(x,y,other.x-other.area,other.y-20,other.x+other.area,other.y+20){
                        _atk = true
                    }
                }
                
                if _atk==true and global.nivelterminado=false and global.iniciogame=true{
                    audio_sound_pitch(audio_play_sound(ghostpepper1_snd,1,false),random_range(0.8,1.2))
                    state=1
                    image_index=0
                }
            }
        break
        
        case 1:
            sprite_index=ghostpepper2_spr
            if image_index>image_number-1{
                state=2
                audio_sound_pitch(audio_play_sound(ghostpepper2_snd,1,false),random_range(0.8,1.2))
            }
        break
        
        case 2:
            plant_cost=0
            sprite_index=ghostpepper3_spr
            part_particles_create(control_obj.part, x+irandom_range(-area,area), y+irandom(15), control_obj.p21, 1)
            
            gimg+=img
            if gimg>=9 gimg=0
            
            if t>0{
                t--
                if t_dmg>0{
                    t_dmg--
                }else{
                    t_dmg=30
                    with(eatfather_obj){
                        if point_in_rectangle(x,y,other.x-other.area,other.y-20,other.x+other.area,other.y+20){
                            audio_play_sound(choose(pea_impact_snd,pea_impact2_snd),1,false)
                            if soltarproteccion=false audio_play_sound(choose(hurtsnd,hurt2snd),1,false);
                            if control_obj.invisible==false image_alpha=0.5
                            vida -= 25
                        }
                        
                        ///LOGRO
                        if (object_index == ghost_obj){
                            if (vida <= 0 and inv == true){
                                with(logros_obj){haunted_ghost = true}
                            }
                        }
                    }
                }
            }else{
                state=3
            }
        break
        
        case 3:
            sprite_index=ghostpepper4_spr
            
            if image_index>15{
                image_alpha=random(1)
            }
            
            if image_index>image_number-1{
                repeat(10){part_particles_create(control_obj.part, x+irandom_range(-10,10), y+irandom_range(-10,10), control_obj.p21, 1)}
                with(instance_create(x,y-20,luzcafe_obj)){
                    sprite_index=ghost_explo_spr
                }
                create_explosion(x,y,4,3.2,2.7,ghostpepper3_snd,15,50)
                vida = 0;
            }
        break
    }
}

