if instance_exists(optionsmenu_obj)
{
instance_destroy(optionsmenu_obj);
instance_destroy(masvol_obj);
instance_destroy(menosvol_obj);
instance_destroy(fullscreen_obj);
instance_destroy(langen_obj);
instance_destroy(langes_obj);
instance_destroy(cursoroptbutton_obj);
instance_destroy();
}

if instance_exists(optionsmenu2_obj)
{
audio_resume_all();
instance_activate_all();
pausar_obj.image_alpha=1
instance_destroy();
instance_destroy(optionsmenu2_obj);
instance_destroy(backtolevels_obj)
instance_destroy(masvol_obj);
instance_destroy(menosvol_obj);
instance_destroy(fullscreen_obj);
instance_destroy(restartrm2_obj);
instance_destroy(langen_obj);
instance_destroy(langes_obj);

}

