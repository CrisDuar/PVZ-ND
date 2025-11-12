event_inherited();
if vida>350{
    if comiendo=false{
        sprite_index=wfutbolzombi1_spr
    }else{
        sprite_index=efutbolzombi1_spr
    }
}else if vida>240{
    if comiendo=false{
        sprite_index=wfutbolzombi2_spr
    }else{
        sprite_index=efutbolzombi2_spr
    }
}else if vida>100{
    if comiendo=false{
        sprite_index=wfutbolzombi3_spr
    }else{
        sprite_index=efutbolzombi3_spr
    }
}else if vida>30{
    if comiendo=false{
        sprite_index=wfutbolzombi4_spr
    }else{
        sprite_index=efutbolzombi4_spr
    }
}else{
    if comiendo=false{
        sprite_index=wfutbolzombi5_spr
    }else{
        sprite_index=efutbolzombi5_spr
    }
}

if (vida<=100 or global.nivelterminado=true) and soltarproteccion=false{
    soltarproteccion=true
    maxhp = 100
    drop(x-25,y-102+30*water, futbolhelmet1_spr, 0, true, image_blend, y, depth-10)
}

