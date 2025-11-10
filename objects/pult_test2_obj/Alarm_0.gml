if global.gameover=false
and global.nivelterminado=false
{
//zombies
if instance_exists(eatfather_obj)
and objx<1080{
//if collision_line(x+10, y+115, maxdistance, y+115,instance_nearest(x+10,y+115,eatfather_obj), false, false)
image_speed=imagspdisparo
sprite_index=imageshooting
image_index=0
disparando=true
alarm[2]=room_speed*tiempodisparo
}
alarm[0]=room_speed*random_range(minrange,maxrange)*cadencia
}

