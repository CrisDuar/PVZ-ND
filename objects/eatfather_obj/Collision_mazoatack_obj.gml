if control_obj.invisible==false image_alpha=0.5
vida -= 150

if vida<=0 zombiedrop(money);

audio_play_sound(mazo1_snd,1,false);
instance_create(x,y-60+30*water,destroygrave_obj)

