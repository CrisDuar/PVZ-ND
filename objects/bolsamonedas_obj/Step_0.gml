image_alpha+=0.08

if animacion=true
{
if vspeed<=3
{
vspeed+=0.1
}
else
{
if animacion=true{audio_play_sound(coindrop_snd,1,false)}
animacion=false
vspeed=0
hspeed=0
}
}

