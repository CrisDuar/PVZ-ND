event_inherited();

if vida>115{
    if comiendo=false{
        if disparando=false{sprite_index=papsho1_spr}else{sprite_index=papshooting1_spr}
    }else{
        sprite_index=papshoeat1_spr
    }
}else if vida>100{
    if comiendo=false{
        if disparando=false{sprite_index=papsho2_spr}else{sprite_index=papshooting2_spr}
    }else{
        sprite_index=papshoeat2_spr}
}else if vida>30{
    if comiendo=false{
        if disparando=false{sprite_index=papsho3_spr}else{sprite_index=papshooting3_spr}
    }else{
        sprite_index=papshoeat3_spr
    }
}else{
    if comiendo=false{
        if disparando=false{sprite_index=papsho4_spr}else{sprite_index=papshooting4_spr}
    }else{
        sprite_index=papshoeat4_spr
    }
}


if (vida<=100 or global.nivelterminado=true) and soltarproteccion=false{
    maxhp = 100
    soltarproteccion=true
    drop(x-17, y-118+30*water, paperboat_spr, 0, true, image_blend, y, depth-10)
}

if x<distancia and comiendo=false and global.gameover=false{
    var proceed = false;
    
    if instance_exists(typeplant_obj){
        with(typeplant_obj){ //Checar si alguna planta pasa el filtro para que pueda disparar
            if collision_rectangle(other.x-25, other.y-20, 256, other.y+20,self, false, false)
            and canhit == true
            and sprite_index!=setasolar1_spr
            and sprite_index!=setasolarsleep_spr
            and sprite_index!=setasolarsun1_spr
            and sprite_index!=setamiedica3_spr{
                proceed = true;
                break;
            }
        }
    }
    
    if (proceed or collision_rectangle(x-25, y-45, 256, y+20,pumpkin_obj, false, false)){
        hspeed=0
        disparando=true
        if stop=false and gameover=false{image_speed=(motivated*0.08)+0.16/(1+congelado)}
    
        if image_index>=10 and image_index<=12 and shooted=false{
            shooted=true
            
            with(instance_create(x-65,y-55,papel_obj)){
            
                color = other.image_blend;
            }
        }
        
        if image_index>=0 and image_index<=2{shooted=false}
    }else{
        shooted=false;
        disparando=false;
    }
}else{
    shooted=false;
    disparando=false;
}

