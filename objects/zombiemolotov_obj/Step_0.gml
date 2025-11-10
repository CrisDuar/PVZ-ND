event_inherited();

//Luz en la niebla
if glow<360{
    glow+=0.5
}else{
    glow=0
}

if glow_alpha<1 glow_alpha+=0.05

if (x <= max_x) ready=true;

//Cambiar de estado
if (x <= max_x or ready==true) and throwed == false and fire==true and instance_exists(typeplant2_obj){
    if t<time{
        state = 1
    }
}else{
    state = 0
    t=0
}

if fire == true and show==true{
    if glow_alpha<1 glow_alpha+=0.05
    part_particles_create(part, x-random_range(55,65)+mlv_xx, y-random_range(25,35)+mlv_yy, p1, irandom_range(1,2));
}else{
    if glow_alpha>0 glow_alpha-=0.05
}

if control_obj.rain == true or water == true or congelado==true{
    fire = false
}

switch(state){
    case 0://Camina normalmente | sprites
        caneat = true
        walkspeed=-0.25
        
        if vida>30{
            if throwed == false{
                if comiendo == false{
                    sprite_index = molotovwalk1_spr
                }else{
                    sprite_index = molotoveat1_spr
                }
            }else{
                if comiendo == false{
                    sprite_index = molotovwalk3_spr
                }else{
                    sprite_index = molotoveat3_spr
                }
            }
        }else{
            if throwed == false{
                if comiendo == false{
                    sprite_index = molotovwalk2_spr
                }else{
                    sprite_index = molotoveat2_spr
                }
            }else{
                if comiendo == false{
                    sprite_index = molotovwalk4_spr
                }else{
                    sprite_index = molotoveat4_spr
                }
            }
        }
    break
    
    case 1://Preparándose antes de tirar la molotov
        walkspeed=0
        caneat=false
        
        if t<time{
            t++
        }else{
            image_index = 0
            state = 2
        }
        
        if vida>30{
            sprite_index = molotovidle1_spr
        }else{
            sprite_index = molotovidle2_spr
        }
    break
    
    case 2:
        walkspeed=0
        caneat=false
        if vida>30{
            sprite_index = molotovthrow1_spr
        }else{
            sprite_index = molotovthrow2_spr
        }
        switch(floor(image_index)){
            case 2:
            case 3:
                mlv_xx=10
                mlv_yy=-20
                show=true
            break
            
            case 4:
                mlv_xx=15
                mlv_yy=-40
                show=true
            break
            
            case 5:
            case 9:
                mlv_xx=5
                mlv_yy=-70
                show=true
            break
            
            default:
                show=false
            break
        }
        
        if image_index>=10 and molotov==false{
            with(instance_create(x-35,y-90,molotov_obj)){
                if control_obj.multijugador or room==izombie_rm{
                    x3 = other.vstile_x
                    y3 = other.vstile_y
                }else{
                    if instance_exists(typeplant2_obj){
                        obj = instance_nearest(irandom(1000),irandom(600),typeplant2_obj)
                    }else{
                        other.state=0
                        other.molotov=false
                        other.throwed=false
                        instance_destroy()
                    }
                }
            }
            molotov = true
            glow_alpha=0
        }
        
        if image_index>=image_number-1 and throwed==false{
            throwed=true
        }
    break
}

//sonido inicial
if sfx == false{
    audio_play_sound(firestart_snd, 1, false);
    sfx = true
}

