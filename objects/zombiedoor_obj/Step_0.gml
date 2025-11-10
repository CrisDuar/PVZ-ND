event_inherited();

if vida>30{
    if puertavida>200{
        if comiendo=false{sprite_index=zombiedoor1_spr}else{sprite_index=zombiedooreat1_spr}
    }else if puertavida>100{
        if comiendo=false{sprite_index=zombiedoor2_spr}else{sprite_index=zombiedooreat2_spr}
    }else if puertavida>0{
        if comiendo=false{sprite_index=zombiedoor3_spr}else{sprite_index=zombiedooreat3_spr}
    }else{
        if comiendo=false{sprite_index=zombie1_spr}else{sprite_index=zombieeat_spr}
    }
}else{
   if puertavida>200{
        if comiendo=false{sprite_index=zombiedoor01_spr}else{sprite_index=zombiedooreat01_spr}
    }else if puertavida>100{
        if comiendo=false{sprite_index=zombiedoor02_spr}else{sprite_index=zombiedooreat02_spr}
    }else if puertavida>0{
        if comiendo=false{sprite_index=zombiedoor03_spr}else{sprite_index=zombiedooreat03_spr}
    }else{
        if comiendo=false{sprite_index=zombie1sinmano_spr}else{sprite_index=zombieatsinbrazo_spr}
    }
}

//soltar la puerta

if puertavida<=0 or vida<=0 or global.nivelterminado=true{
    if soltarproteccion=false{
        soltarproteccion=true
        drop(x-40,y-30+30*water,screendoor_spr,0,true,image_blend,y,depth-10)
    }
}

