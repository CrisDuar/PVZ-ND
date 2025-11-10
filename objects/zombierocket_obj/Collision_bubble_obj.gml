//NORMAL
if soltarproteccion=true{
    audio_play_sound(choose(hurtsnd,hurt2snd),1,false);
    if timestop<room_speed*2{timestop=room_speed*2}
}
if control_obj.invisible==false image_alpha=0.5
vida -= 5

