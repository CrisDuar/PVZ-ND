if object_index!=grave4_obj{
    vida=0
}
else{
    instance_create(x+10,y-50,destroygrave_obj)
    audio_play_sound(escudo_snd,1,false)
}

