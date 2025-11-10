if instance_exists(cursorwindow_obj)
{
instance_destroy(cursorwindow_obj);
instance_destroy(changecursor1_obj);
instance_destroy(changecursor2_obj);
audio_play_sound(aceptoption_snd,1,false);
instance_destroy(blackcursors_obj);
instance_destroy(whitecursors_obj);
instance_destroy();
}

