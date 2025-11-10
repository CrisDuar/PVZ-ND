if fase=0{
timer--
if timer<=0 fase=1
}

if size>=1.18{
size-=0.25
}

if size<1.18
and s=false{
s=true
shake=2
audio_play_sound(finalwave_snd,10,false)
}

if fase=0
{
transparencia+=0.05
}
else
{transparencia-=0.05}

if transparencia<=0
{instance_destroy();}

if global.lang="en"{l=0}
if global.lang="es"{l=1}

