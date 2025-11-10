event_inherited();

if sprite_index=imgshot{
if image_index>=6 and disparando=false{
audio_play_sound(choose(pea_shoot_snd,pea_shoot2_snd), 1, false);
with(instance_create(x+20,y-50,nabo_obj)){direction=45}
with(instance_create(x-20,y-50,nabo_obj)){direction=135}
with(instance_create(x-20,y-30,nabo_obj)){direction=225}
with(instance_create(x+20,y-30,nabo_obj)){direction=315}
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

//Subir y bajar
if up<360 up++ else up=0
yy = 5*sin(degtorad(up))

