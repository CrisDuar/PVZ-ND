if puertavida<=0 or other.x>=x{
    if control_obj.invisible==false image_alpha=0.5
    vida -= 5
    if timestop<room_speed*2{timestop=room_speed*2}
}

if soltarproteccion=false audio_play_sound(choose(hurtsnd,hurt2snd),1,false);

