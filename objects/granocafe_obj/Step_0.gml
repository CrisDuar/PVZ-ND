event_inherited();
depth=-y-40

if image_index>=18.3{image_alpha-=0.15}

if global.gameover=true
{image_speed=0}


if image_alpha<=0.3{
instance_create(x,y,destroygrave_obj)
instance_create(x,y,luzcafe_obj)
audio_play_sound(coffee2_snd,1,false)
audio_play_sound(coffee_snd,1,false);
instance_create(x,y,cafewake_obj)
//with(instance_nearest(x,y+15,typeplant_obj)){event_perform(ev_collision,cafewake_obj)}
instance_destroy()
}

