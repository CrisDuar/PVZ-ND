if !instance_exists(spacebearlogo_obj)
and !instance_exists(optionsmenu_obj)
and !instance_exists(quitwindow_obj)
and !instance_exists(cursorwindow_obj)
and !instance_exists(deletewindow_obj)
and !audio_is_playing(gameover_snd)
{
audio_play_sound(selectstone2_snd,1,false)
image_yscale=1.025
image_xscale=1.025
image_index=1
}

