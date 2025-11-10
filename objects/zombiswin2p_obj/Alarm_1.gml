if room==izombie_rm{
    room_goto(morewaysplay_rm)
    if (global.battle_diff == 2) logros_obj.zmind = true;
}else{
    create_versus_log(true)
    room_goto(configvs_rm)
}
instance_destroy();

