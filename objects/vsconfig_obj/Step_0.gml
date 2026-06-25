var n_devices = 0
var gp_num = gamepad_get_device_count();
for (var i = 0; i < gp_num; i++;){
    if gamepad_is_connected(i) and (gamepad_anybutton(i)==true/*gamepad_button_check(i, gp_face1)*/ or ds_list_find_index(global.gamepad_list, i)!=-1){
        if (ds_list_find_index(global.gamepad_list, i)==-1) ds_list_add(global.gamepad_list, i)
    }
}

n_devices = ds_list_size(global.gamepad_list)
var has_focus

if os_type==os_android{
    if os_is_paused(){
        has_focus=false
    }else{
        has_focus=true
    }
}else{
    if window_has_focus(){
        has_focus=true
    }else{
        has_focus=false
    }
}

if (has_focus){
    for (var i = 0; i < ds_list_size(global.gamepad_list); i++){
        if !gamepad_is_connected(global.gamepad_list[| i]){
            ds_list_delete(global.gamepad_list, i)
        }
    }
}


if global.vstouch==false{
    if global.n_devices_con!=n_devices{
        global.n_devices_con=n_devices
        
        if instance_exists(pausar_obj){
            with(pausar_obj){
                event_perform(ev_mouse,ev_left_release)
            }
        }
    }
    
    if !instance_exists(gamepadconfig_obj){
        if n_devices==1{
            if ((global.gamepad_plant==-1 and global.gamepad_zombie==-1) and (global.idp_kb[0]==false and global.idp_kb[1]==false)){
                if room==configvs_rm and __view_get( e__VW.XView, 0 )!=1088 and __view_get( e__VW.YView, 0 )!=1088{
                    __view_set( e__VW.XView, 0, 1088 )
                    __view_set( e__VW.YView, 0, 0 )
                    instance_create(0,0,fadeout_obj)
                }
                instance_create(0,0,gamepadconfig_obj)
            }
        }else if n_devices>1{
            //if ((global.gamepad_plant==-1 and global.idp_kb[0]==false) or (global.gamepad_zombie==-1 and global.idp_kb[1]==false)){
            
            //if ((global.gamepad_plant==-1 or global.gamepad_zombie==-1) and (global.idp_kb[kb_p]==false or global.idp_kb[kb_z]==false)){
            if ((global.gamepad_plant==-1 and global.idp_kb[0]==false) or (global.gamepad_zombie==-1 and global.idp_kb[1]==false)){
                if room==configvs_rm and __view_get( e__VW.XView, 0 )!=1088 and __view_get( e__VW.YView, 0 )!=1088{
                    __view_set( e__VW.XView, 0, 1088 )
                    __view_set( e__VW.YView, 0, 0 )
                    instance_create(0,0,fadeout_obj)
                }
                instance_create(0,0,gamepadconfig_obj)
                
            }
        }
        
        if (has_focus){
            if !gamepad_is_connected(global.gamepad_plant){
                if global.idp_kb[0]==false global.gamepad_plant=-1
            }else{
                if gamepad_button_check_pressed(global.gamepad_plant, gp_face4) and room==configvs_rm{
                    global.gamepad_plant=-1
                    global.idp_kb[0]=false
                    global.idp_kb[1]=false
                }
            }
            
            
            if !gamepad_is_connected(global.gamepad_zombie){
                if global.idp_kb[1]==false global.gamepad_zombie=-1
            }else{
                if gamepad_button_check_pressed(global.gamepad_zombie, gp_face4) and room==configvs_rm{
                    global.gamepad_zombie=-1
                    global.idp_kb[0]=false
                    global.idp_kb[1]=false
                }
            }

        }
    }
    
    
    if n_devices==0 and has_focus{
        global.idp_kb[0]=false
        global.gamepad_plant=-1
        
        global.idp_kb[1]=false
        global.gamepad_zombie=-1
    }
}else{
    global.idp_kb[0]=false
    global.gamepad_plant=-1
    
    global.idp_kb[1]=false
    global.gamepad_zombie=-1
}

/* */
/*  */
