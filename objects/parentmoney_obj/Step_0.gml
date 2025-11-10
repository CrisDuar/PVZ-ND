event_inherited();
depth=-998;

//nivel completado
if audio_is_playing(newplant_snd) or audio_is_playing(finalprize_snd){
    event_user(1)
}

if t<1{
    if (image_alpha < 1) image_alpha+=0.05
}

