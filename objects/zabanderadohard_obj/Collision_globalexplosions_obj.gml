if control_obj.invisible==false image_alpha=0.5
vida-=50
instance_create(x,y-60,destroygrave_obj)
audio_sound_pitch(audio_play_sound(rallyshield_snd,10,false),random_range(0.95,1.15))

