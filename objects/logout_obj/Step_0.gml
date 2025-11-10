if global.lang="en"{
image_index=0
}

if global.lang="es"{
image_index=1
}
if instance_exists(apicontrol_obj){
    if !os_is_network_connected() and apicontrol_obj.logged==true{
        with(apicontrol_obj){
            gj_session_ping(false);
            gj_user_logout()
            login = -1
            data_import=0
            logged=false
            http_data[0] = -1
            global.user=""
            global.token=""
            global.remind=false
        }
    }
}

