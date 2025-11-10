if puertavida>0 and other.x<x{
    if control_obj.invisible==false image_alpha=0.5
    puertavida -= 20
}else{
    if control_obj.invisible==false image_alpha=0.5
    vida -= 20
}

if soltarproteccion=false audio_play_sound(choose(hurtsnd,hurt2snd),1,false);
morpho_t = 18

