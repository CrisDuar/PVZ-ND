event_inherited();

if vida <= 0 or global.nivelterminado=true{
    drop(x-66, y-66+30*water, magicwand_spr, 0, false, image_blend, y, depth-10)
    drop(x-25, y-102+30*water, magichat_spr, 0, false, image_blend, y, depth-10)
}

if atackcall<900{
    if stop=false and state=0 and x<=1115{
        atackcall++
    }
}else{
    atackcall=0
    event_user(1)
}

switch(state){
    case 0: //walk
        imagespeed2=0.2
        walkspeed=-0.4
        caneat=true
        t=0
        if comiendo=false{
            if vida>30{sprite_index=magowalk1_spr}else{sprite_index=magowalk2_spr}
        }else{
            if vida>30{sprite_index=magoeat1_spr}else{sprite_index=magoeat2_spr}
        }
    break
    
    case 1: //attackin'
        imagespeed2=0.2
        walkspeed=0
        caneat=false
        
        if vida>30{sprite_index=magoattack1_spr}else{sprite_index=magoattack2_spr}
        
        if image_index>=image_number-1{
            with(instance_create(x-55,y-90,magospark_obj)){
                obj=other.obj
                type=other.type
            }
            state=2
        }
    break
    
    case 2: //resting
        imagespeed2=0.2
        walkspeed=0
        caneat=true
        
        if t<300 {t++}else{state=0}
        
        if comiendo=false{
            if vida>30{sprite_index=magoidle1_spr}else{sprite_index=magoidle2_spr}
        }else{
            if vida>30{sprite_index=magoeat1_spr}else{sprite_index=magoeat2_spr}
        }
    break
}

