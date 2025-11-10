if audio_is_playing(newplant_snd)
or audio_is_playing(finalprize_snd)
{image_alpha-=0.08 ; image_speed=0}

if image_alpha<=0
{instance_destroy();}

if animacion=true
{
if vspeed<=3
{vspeed+=0.1}
else
{
animacion=false
vspeed=0
hspeed=0
}
}

