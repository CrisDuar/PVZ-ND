//CONGELAMIENTO
if congelado=false and canfreeze=true{audio_play_sound(zombifrost_snd,1,false)}
if timecongelado<room_speed*8{timecongelado=room_speed*8}

if soltarproteccion=false
{audio_play_sound(choose(hurtsnd,hurt2snd),1,false);}
if control_obj.invisible==false image_alpha=0.5
vida -= 12
image_blend=c_frost

