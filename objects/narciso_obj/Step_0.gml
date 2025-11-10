event_inherited();

//subir y bajar
if water==true{
    if up<360 up+=3 else up=0
    yy = 2*sin(degtorad(up))
}else{
    yy=0
    up=0
}

if sprite_index=imgshot{
if image_index>=3 and disparando=false{
audio_play_sound(choose(puff1_snd,puff2_snd), 1, false);
instance_create(x+25,y-40,bubble_obj)
disparando=true
}

if image_index>=image_number-0.5
{
sprite_index=imgidle
image_index=0
image_speed=0.16
disparando=false
}
}


