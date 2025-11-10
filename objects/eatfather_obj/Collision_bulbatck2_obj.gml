//perder vida / perecer

if vida >= 0
{
if soltarproteccion=false
{audio_play_sound(choose(hurtsnd,hurt2snd),1,false);}
if control_obj.invisible==false image_alpha=0.5
vida -= 120
}

