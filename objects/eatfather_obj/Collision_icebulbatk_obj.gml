//CONGELAMIENTO
if congelado=false and canfreeze=true{audio_play_sound(zombifrost_snd,1,false) ; congelado=true}

if frozenstop<room_speed*10
{frozenstop=room_speed*10 ; timecongelado=room_speed*15}

//perder vida / perecer
if vida >= 0
{
if soltarproteccion=false
{audio_play_sound(choose(hurtsnd,hurt2snd),1,false);}
if control_obj.invisible==false image_alpha=0.5
vida -= 120
}

image_blend=c_frost

