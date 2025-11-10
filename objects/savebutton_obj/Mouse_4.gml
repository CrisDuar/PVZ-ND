image_xscale=0.98
image_yscale=0.98
audio_play_sound(selectstone1_snd,1,false)
audio_play_sound(coffee_snd,1,false);

gj_save_file("savedata.ini","savedata")
gj_save_file("player_surv.ini","player_surv")
gj_save_file("pool_surv.ini","pool_surv")
gj_save_file("weather_surv.ini","weather_surv")

instance_destroy(loadbutton_obj)
instance_create(4224,568,loadbutton_obj)
//game_restart();

