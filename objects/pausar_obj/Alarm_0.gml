if image_alpha>=1
{
if !instance_exists(optionsmenu2_obj)
and !instance_exists(newplantcenter_obj)
{

control_obj.pala=false
audio_pause_all();
image_alpha=0
instance_deactivate_all(false);
instance_activate_object(controlmenu_obj)
instance_activate_object(pausar_obj)
if room==survival1_rm
{instance_activate_object(survcontrol_obj)}
audio_play_sound(pausa_snd,1,false)
instance_create(__view_get( e__VW.XView, 0 )+544,320,optionsmenu2_obj)
}
}



