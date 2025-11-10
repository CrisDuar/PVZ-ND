if puertavida>0 and other.x<x{
    if control_obj.invisible==false image_alpha=0.5
    puertavida -= 12
}else{
    if control_obj.invisible==false image_alpha=0.5
    vida -= 12
    
    //CONGELAMIENTO
    if congelado=false{audio_play_sound(zombifrost_snd,1,false)}
    if timecongelado<room_speed*8{timecongelado=room_speed*8}
    image_blend=c_frost
}

if soltarproteccion=false audio_play_sound(choose(hurtsnd,hurt2snd),1,false);

