if !instance_exists(spacebearlogo_obj)
and !instance_exists(optionsmenu_obj)
and !instance_exists(quitwindow_obj)
and !instance_exists(cursorwindow_obj)
and !instance_exists(deletewindow_obj)
and !audio_is_playing(gameover_snd)
and visible=true
{
audio_stop_all();
room_goto(almanacindex_rm);
audio_play_sound(aceptoption_snd,1,false);
image_yscale=1
image_xscale=1
}

