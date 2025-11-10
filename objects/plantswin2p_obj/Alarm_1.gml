if room==iplant_rm{
    room_goto(morewaysplay_rm)
    if (global.battle_diff == 2) logros_obj.pmind = true;
}else{
    create_versus_log(false)
    room_goto(configvs_rm)
}

instance_destroy();

//controlmenu_obj

