if (vida<=30 and soltarproteccion==false) or global.nivelterminado=true{
    soltarproteccion=true
    drop(x-40,y-45+30*water,megafono_spr,0,false,image_blend,y,depth-10)
}

if vida <= 0 or global.nivelterminado=true{
    drop(x-66,y-66+30*water,sign_spr,0,false,image_blend,y,depth-10)
    //drop(x,y-30+30*water,brazo_spr,handspr,true,image_blend,y,depth-10)
}

event_inherited();

if soltarproteccion==false and global.gameover==false{
    if t>0{
        if (stop==false and x<=1150) t--
    }else{
        snd = audio_play_sound(protestant_snd,100,false)
        audio_sound_pitch(snd,random_range(0.7,1))
        with(instance_create(1180,get_closest_row(y+choose(90,0,-90)),protestant2_obj)){image_alpha=0}
        t=600
    }
}else{
    if audio_is_playing(snd) audio_stop_sound(snd)
}

if !audio_is_playing(snd){
    caneat=true
    if comiendo=false{sprite_index=protestantwalk1_spr}else{sprite_index=protestanteat1_spr}
    
    if vida>30{
        if soltarproteccion==false{
            imagespeed2=0.35
            walkspeed=-0.35
            if comiendo=false{
                sprite_index=protestantwalk1_spr
            }else{
                sprite_index=protestanteat1_spr
            }
        }else{
            imagespeed2=0.25
            walkspeed=-0.25
            if comiendo=false{
                sprite_index=protestantwalk3_spr
            }else{
                sprite_index=protestanteat3_spr
            }
        }
    }else{
        imagespeed2=0.25
        walkspeed=-0.25
        if comiendo=false{
            sprite_index=protestantwalk2_spr
        }else{
            sprite_index=protestanteat2_spr
        }
    }
}else{
    imagespeed2=0.16
    walkspeed=0
    caneat=false
    sprite_index=protestantcall_spr
}
/*
if  and alarm[0]=-1{
alarm[0]=room_speed*8
}



/* */
/*  */
