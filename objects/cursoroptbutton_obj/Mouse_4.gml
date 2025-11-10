if !instance_exists(spacebearlogo_obj)
and !instance_exists(quitwindow_obj)
and !instance_exists(cursorwindow_obj)
{
if instance_exists(optionsmenu_obj)
{
instance_destroy(optionsmenu_obj);
instance_destroy(ok_obj);
instance_destroy(masvol_obj);
instance_destroy(menosvol_obj);
instance_destroy(fullscreen_obj);
instance_destroy(langen_obj);
instance_destroy(langes_obj);
instance_destroy(cursoroptbutton_obj);
instance_destroy();
}
audio_play_sound(seleccionarplantas_snd,1,false)
instance_create(544,320,cursorwindow_obj)
}

