event_inherited();

if get_closest_row(y)==zombispawn_obj.f1 {top=y-90}else{top=get_closest_row(y-90)}
if get_closest_row(y)==get_closest_row(615){bottom=y+90}else{bottom=get_closest_row(y+90)}

if sprite_index=imgshot{
if image_index>=8 and disparando=false{
audio_play_sound(choose(pea_shoot_snd,pea_shoot2_snd), 1, false);

//Sólo hacia arriba
if collision_line(x+40, top, maxdistance, top,parentattack_obj, false, false)
and !collision_line(x+10, y, maxdistance, y,parentattack_obj, false, false)
and !collision_line(x+40, bottom, maxdistance, bottom,parentattack_obj, false, false){
cadencia=0.66
with(instance_create(x-10,y-40,pea_obj)){vspd=-10}
with(instance_create(x-10,y-40,pea_obj)){hspd=15; vspd=-10}
with(instance_create(x-10,y-40,pea_obj)){hspd=18; vspd=-10}
}
//Sólo hacia el centro
else if !collision_line(x+40, top, maxdistance, top,parentattack_obj, false, false)
and collision_line(x+10, y, maxdistance, y,parentattack_obj, false, false)
and !collision_line(x+40, bottom, maxdistance, bottom,parentattack_obj, false, false){
cadencia=0.66
instance_create(x-10,y-40,pea_obj)
with(instance_create(x-10,y-40,pea_obj)){hspd=15}
with(instance_create(x-10,y-40,pea_obj)){hspd=18}
}
//Sólo hacia abajo
else if !collision_line(x+40, top, maxdistance, top,parentattack_obj, false, false)
and !collision_line(x+10, y, maxdistance, y,parentattack_obj, false, false)
and collision_line(x+40, bottom, maxdistance, bottom,parentattack_obj, false, false){
cadencia=0.66
with(instance_create(x-10,y-40,pea_obj)){vspd=10}
with(instance_create(x-10,y-40,pea_obj)){hspd=15; vspd=10}
with(instance_create(x-10,y-40,pea_obj)){hspd=18; vspd=10}
}
//Centro / arriba
else if collision_line(x+40, top, maxdistance, top,parentattack_obj, false, false)
and collision_line(x+10, y, maxdistance, y,parentattack_obj, false, false)
and !collision_line(x+40, bottom, maxdistance, bottom,parentattack_obj, false, false){
cadencia=1
instance_create(x-10,y-40,pea_obj)
with(instance_create(x-10,y-40,pea_obj)){hspd=18}
with(instance_create(x-10,y-40,pea_obj)){vspd=-10}
}
//Centro / abajo
else if !collision_line(x+40, top, maxdistance, top,parentattack_obj, false, false)
and collision_line(x+10, y, maxdistance, y,parentattack_obj, false, false)
and collision_line(x+40, bottom, maxdistance, bottom,parentattack_obj, false, false){
cadencia=1
instance_create(x-10,y-40,pea_obj)
with(instance_create(x-10,y-40,pea_obj)){hspd=18}
with(instance_create(x-10,y-40,pea_obj)){vspd=10}
}
//abajo / arriba
else if collision_line(x+40, top, maxdistance, top,parentattack_obj, false, false)
and !collision_line(x+10, y, maxdistance, y,parentattack_obj, false, false)
and collision_line(x+40, bottom, maxdistance, bottom,parentattack_obj, false, false){
cadencia=1
with(instance_create(x-10,y-40,pea_obj)){vspd=choose(-10,10); hspd=18}
with(instance_create(x-10,y-40,pea_obj)){vspd=-10}
with(instance_create(x-10,y-40,pea_obj)){vspd=10}
}
//En las 3
else if collision_line(x+40, top, maxdistance, top,parentattack_obj, false, false)
and collision_line(x+10, y, maxdistance, y,parentattack_obj, false, false)
and collision_line(x+40, bottom, maxdistance, bottom,parentattack_obj, false, false){
cadencia=1.2
instance_create(x-10,y-40,pea_obj)
with(instance_create(x-10,y-40,pea_obj)){vspd=-10}
with(instance_create(x-10,y-40,pea_obj)){vspd=10}
}
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


