with(instance_create(x,y,globalbroke_obj)){sprite_index=other.broke; image_angle=other.direction}
audio_play_sound(choose(snd1,snd2),1,false)
if type==2 instance_create(x,y+45,fireatack_obj)

instance_destroy();

