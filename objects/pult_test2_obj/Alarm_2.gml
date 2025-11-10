audio_play_sound(choose(pea_shoot_snd,pea_shoot2_snd), 1, false);
with(instance_create(x+40,y+56,pultproj_obj))
{obj = other.obj
image_blend=c_blue}
alarm[3]=room_speed*0.36

