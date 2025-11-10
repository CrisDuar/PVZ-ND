event_inherited();

if puertavida<=0{
velocidaddeimagen=0.18
walkspeed=-0.25
caneat=true
}

if (room==izombie_rm and x<=315) puertavida=0;

if puertavida>0{
    if check_zombie_eat(typeplant_obj)//distance_to_object(typeplant_obj)<10
    or check_zombie_eat(nenufar_obj)//distance_to_object(nenufar_obj)<10
    or check_zombie_eat(sunmachine_obj)
    or check_zombie_eat(pumpkin_obj)/*distance_to_object(sunmachine_obj)<10*/{
        with(instance_create(x-60,y,trashcan_obj)){vida=other.puertavida}
        var rel = (zombispawn_obj.horde_ttl_hp/zombispawn_obj.horde_hp)
        zombispawn_obj.horde_ttl_hp -= floor(puertavida*rel)
        zombispawn_obj.horde_hp -= puertavida   
        soltarproteccion=true
        puertavida=0
    }
    
    if gameover=true{
        with(instance_create(x-60,y,trashcan_obj)){vida=other.puertavida; depth=other.depth+1}
        soltarproteccion=true
        puertavida=0
    }
    
    if puertavida<=500{sprite_index=zombietrashwalk1_spr}
    if puertavida<=250{sprite_index=zombietrashwalk2_spr}
    if puertavida<=100{sprite_index=zombietrashwalk3_spr}
}else{
velocidaddeimagen=0.18
walkspeed=-0.25
caneat=true
if vida<=100{if comiendo=false{sprite_index=zombie1_spr}else{sprite_index=zombieeat_spr}}
}


//NORMAL

if vida <= 0
or global.nivelterminado=true{
    with(instance_create(x-25,y-92+30*water,popdrop_obj)){
        audio_play_sound(pophead_snd,1,false);
        w=other.water
        image_blend=other.image_blend;
        image_index=other.headspr;
        point=other.y
        depth=other.depth-10
    }
    with(instance_create(x,y,zombieded_obj)){
        water=other.water
        image_blend=other.image_blend;
        sprite_index=other.bodyspr
        depth=other.depth-10
    }
    
    with(instance_create(x,y-30+30*water,popdrop_obj)){
        audio_play_sound(pophead_snd,1,false);
        w=other.water
        sprite_index=brazo_spr;
        image_blend=other.image_blend;
        image_index=other.handspr;
        point=other.y
        depth=other.depth-10
    }
    
    zombiedrop(money)
    instance_destroy();
}

//soltar la puerta

if puertavida<=0 or vida<=0 or global.nivelterminado=true{
    if soltarproteccion=false{
        soltarproteccion=true
        with(instance_create(x-40,y-10,popdrop_obj)){
            audio_play_sound(pophead_snd,1,false);
            w=other.water
            image_index=2
            sprite_index=trashcan_spr;
            image_blend=other.image_blend
            point=other.y
            depth=other.depth-10
        }
    }
}

/* */
/*  */
