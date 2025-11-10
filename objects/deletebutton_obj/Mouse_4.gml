image_xscale=0.98
image_yscale=0.98
audio_play_sound(selectstone1_snd,1,false)
audio_play_sound(coffee_snd,1,false);
audio_play_sound(surprise1_snd,1,false);

gj_remove_file("savedata")
gj_remove_file("player_surv")
gj_remove_file("pool_surv")
gj_remove_file("weather_surv")

instance_destroy(loadbutton_obj)
instance_create(4224,568,loadbutton_obj)

