var n_devices = ds_list_size(global.gamepad_list)

if n_devices>0 and global.gamepad_plant==-1 and global.gamepad_zombie==-1 and !instance_exists(gamepadconfig_obj){
    visible=true
    with(optiontext_obj){
        if id_txt==1 visible=true
    }
}else{
    visible=false
    with(optiontext_obj){
        if id_txt==1 visible=false
    }
}

