with(instance_create(x,y,globalbroke_obj)){sprite_index=other.broke; image_angle=other.direction}
audio_play_sound(choose(snd1,snd2),1,false)
instance_destroy();

