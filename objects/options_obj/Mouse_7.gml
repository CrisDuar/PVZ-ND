if !instance_exists(spacebearlogo_obj)
and !instance_exists(optionsmenu_obj)
and !instance_exists(quitwindow_obj)
and !instance_exists(cursorwindow_obj)
and !instance_exists(deletewindow_obj)
and !audio_is_playing(gameover_snd)
{
audio_play_sound(seleccionarplantas_snd,1,false)
//instance_create(544,320,optionsmenu_obj)
instance_create(x,y,fadeout_obj)
__view_set( e__VW.XView, 0, 1088 )
}

