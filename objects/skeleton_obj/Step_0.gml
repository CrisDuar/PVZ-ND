if (vida <= 0 and sans) logros_obj.sans = true;

event_inherited();

if vida>100{
    
    pila = false
    caneat=true
    walkspeed=-0.30
    pilatime=420
    
    if comiendo=false{sprite_index=skeleton2_spr}else{sprite_index=skeleton3_spr}
    
}else{
    
    sprite_index=skeleton4_spr
    caneat=false
    walkspeed=0
    
    //Efecto de romperse
    if (pila == false){
        pila=true
        
        instance_create(x,y-60,destroygrave_obj)
        with(instance_create(x,y-60,luzcafe_obj)){sprite_index=skeletonpolvo_spr}
        audio_play_sound(skeleton1_snd,1,false)
        image_alpha=0
    }
    
    //Tiempo en que está en forma de pila
    if pilatime>0{
    
        pilatime-=1
        
    }else{
        
        //Tiempo concluido
        
        vida=200
        
        instance_create(x,y-60,destroygrave_obj)
        with(instance_create(x,y-60,luzcafe_obj)){sprite_index=skeletonpolvo_spr}
        audio_play_sound(skeleton2_snd,1,false)
        image_alpha=0
        caneat=true
    }
}

//perder vida / perecer
if vida <= 0 or global.nivelterminado=true{

    instance_create(x,y-60,destroygrave_obj)
    with(instance_create(x,y-60,luzcafe_obj)){sprite_index=skeletonpolvo_spr}
    
    audio_play_sound(skeleton3_snd,1,false)

    repeat(2){drop(x+random_range(-30,10),y+random_range(-20,5), skeletonparts_spr, 1, false, image_blend, y, depth-10)}
    drop(x+random_range(-30,5),y+random_range(-20,5), skeletonparts_spr, 0, false, image_blend, y, depth-10)
    drop(x+random_range(-30,10),y+random_range(-20,5), skeletonparts_spr, 2, false, image_blend, y, depth-10)
    drop(x+random_range(-10,20),y+random_range(-20,5), skeletonparts_spr, 3, false, image_blend, y, depth-10)
    
    zombiedrop(money)
    instance_destroy();
}

