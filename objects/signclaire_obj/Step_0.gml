event_inherited();

depth=-y-5;

if vida<=0{
    audio_play_sound(coffindestroy_snd,1,false)
    instance_create(x,y-50,destroygrave_obj)
    instance_destroy();
}

