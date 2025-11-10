if puertavida>0 and other.x<x{
    if control_obj.invisible==false image_alpha=0.5
    puertavida -= 100
}else{
    if control_obj.invisible==false image_alpha=0.5
    vida -= 100
}

if soltarproteccion=false audio_play_sound(choose(hurtsnd,hurt2snd),1,false);

