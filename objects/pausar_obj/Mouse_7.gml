if !instance_exists(pause_menu_obj) and !instance_exists(newplantcenter_obj){
//if room=survival1_rm
//and global.iniciogame=true
//{survival_save()}
audio_pause_all();

control_obj.pala=false
image_alpha=0

if instance_exists(multidot_obj){  
    instance_destroy(multidot_obj)
}

with(all){
    if variable_instance_exists(id,"part"){
        if part_system_exists(part){
            part_system_automatic_draw(part,false)
            part_system_automatic_update(part,false)
        }
    }
}

instance_deactivate_all(false);
instance_activate_object(controlmenu_obj)
instance_activate_object(logros_obj)
instance_activate_object(cheats_obj)
instance_activate_object(survcontrol_obj)
instance_activate_object(vsconfig_obj)
instance_activate_object(gamepadconfig_obj)
instance_activate_object(apicontrol_obj)
audio_play_sound(pausa_snd,1,false)
instance_create(__view_get( e__VW.XView, 0 )+544,320,pause_menu_obj)
}




