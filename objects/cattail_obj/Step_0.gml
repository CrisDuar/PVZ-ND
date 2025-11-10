event_inherited();

//subir y bajar
if water==true{
    if up<360 up+=3 else up=0
    yy = 2*sin(degtorad(up))
}else{
    yy=0
    up=0
}

img=0.16

if sprite_index=imgshot{
if image_index>=5 and disparando=false{
audio_play_sound(choose(pea_shoot_snd,pea_shoot2_snd), 1, false);
instance_create(x-3,y-55,spike1_obj)
disparando=true
}

if image_index>=image_number-0.5{
sprite_index=imgidle
image_index=0
disparando=false
}
}


