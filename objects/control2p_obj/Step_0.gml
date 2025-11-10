if (control_obj.multijugador and global.iniciogame){
    if zselect>instance_number(menuzombi_obj) and zselect>1 zselect--
    if pselect>instance_number(menuplants_obj) and pselect>1  pselect--
    
    var ch1=keyboard_check_pressed(global.p_ch1)
    var ch2=keyboard_check_pressed(global.p_ch2)
    
    var zch1=keyboard_check_pressed(global.z_ch1)
    var zch2=keyboard_check_pressed(global.z_ch2)
    
    if gamepad_is_connected(global.gamepad_plant){
       ch1=gamepad_button_check_pressed(global.gamepad_plant, gp_shoulderl)
       ch2=gamepad_button_check_pressed(global.gamepad_plant, gp_shoulderr)
    }
    
    if gamepad_is_connected(global.gamepad_zombie){
       zch1=gamepad_button_check_pressed(global.gamepad_zombie, gp_shoulderl)
       zch2=gamepad_button_check_pressed(global.gamepad_zombie, gp_shoulderr)
    }
    
    if (ch1){
        if (pselect>1) pselect-- else pselect=instance_number(menuplants_obj)
    }
    
    if (ch2){
        if (pselect<instance_number(menuplants_obj)) pselect++ else pselect=1
    }
    
    if (zch1){
        if zselect>1 zselect-- else zselect=instance_number(menuzombi_obj)
    }
    
    if (zch2){
        if (zselect<instance_number(menuzombi_obj)) zselect++ else zselect=1
    }
    
    if (global.vs_log){
        if get_names = false and global.iniciogame=true and global.vsgamemode != 2{
            if instance_exists(menuplants_obj) and instance_exists(menuzombi_obj){
                
                global.vs_log_plants = get_units_string(menuplants_obj)
                global.vs_log_zombies = get_units_string(menuzombi_obj)
                
                get_names = true
            }
        }
    }
}

