water=true

if distance_to_object(nenufar_obj)>10{
    audio_sound_pitch(audio_play_sound(aguazom_snd,1,false),random_range(0.8,1.2))
    create_dirt(1)
    vida = 0;
}else{
    var sine_obj = instance_nearest(x,y,nenufar_obj)
    yy=sine_obj.yy
}

