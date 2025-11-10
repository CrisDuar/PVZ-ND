event_inherited();

//if sprite_index=imgshot{img=0.24}else{img=0.16}
/*
if cadencia<60
and disparando=false
and sleep=false
{cadencia+=random_range(0.1,0.3)}

if cadencia>=60
and global.gameover=false
and global.nivelterminado=false
and global.iniciogame=true
{disparando=true}


if disparando=true
and sprite_index=setaplasma1_spr{
if collision_line(x+40, y+75, x+40 + 800 * dcos(0), y+75 - 800 * dsin(0), eatfather_obj, true, false)
or collision_line(x+40, y+75, x+40 + 800 * dcos(45), y+75 - 800 * dsin(45), eatfather_obj, true, false)
or collision_line(x+40, y+75, x+40 + 800 * dcos(180), y+75 - 800 * dsin(90), eatfather_obj, true, false)
or collision_line(x+40, y+75, x+40 + 800 * dcos(135), y+75 - 800 * dsin(135), eatfather_obj, true, false)
or collision_line(x+40, y+75, x+40 + 800 * dcos(180), y+75 - 800 * dsin(180), eatfather_obj, true, false)
or collision_line(x+40, y+75, x+40 + 800 * dcos(225), y+75 - 800 * dsin(225), eatfather_obj, true, false)
or collision_line(x+40, y+75, x+40 + 800 * dcos(270), y+75 - 800 * dsin(270), eatfather_obj, true, false)
or collision_line(x+40, y+75, x+40 + 800 * dcos(315), y+75 - 800 * dsin(315), eatfather_obj, true, false)
{
image_index=0
sprite_index=imageshooting
}
}*/

if sleep==false{
if sprite_index=imgshot{
if image_index>=17.5
and disparando=true{
disparando=false
audio_play_sound(setaplasma2_snd,0.2,false)
with(instance_create(x,y-20,plasma_obj)){direction=45}
with(instance_create(x,y-20,plasma_obj)){direction=135}
with(instance_create(x,y-20,plasma_obj)){direction=225}
with(instance_create(x,y-20,plasma_obj)){direction=315}
with(instance_create(x,y-20,plasma_obj)){direction=0}
with(instance_create(x,y-20,plasma_obj)){direction=90}
with(instance_create(x,y-20,plasma_obj)){direction=180}
with(instance_create(x,y-20,plasma_obj)){direction=270}
}

if image_index>=23.5{
//disparando=false
sprite_index=setaplasma3_spr
if sleep==false{timer=room_speed*10}else{timer=room_speed*20}
}
}

if timer>0{sprite_index=setaplasma3_spr; timer--; if _alpha<0.25{_alpha+=0.1}}
if timer<=0 and sprite_index!=imgshot{sprite_index=imgidle; if _alpha>0{_alpha-=0.1}}
}else{
sprite_index=setaplasma3_spr
}

/* */
/*  */
