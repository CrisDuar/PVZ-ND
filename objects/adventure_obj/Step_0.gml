if !instance_exists(zombieanim_obj){
    if global.lang="en"{
    sprite_index=adventure_spr
    }
    if global.lang="es"{
    sprite_index=aventura_spr
    }
}

if instance_exists(zombieanim_obj){

    timer++

    if !audio_is_playing(gameover_snd) or timer>6*60{ 
        room_goto_next();
    }
}else{
    timer = 0
}

if audio_is_playing(gameover_snd){
    image_speed=0.32*dlt
}

