image_speed=0

if global.user!="" and global.token!="" and os_is_network_connected(){
    apicontrol_obj.login = gj_user_login(global.user,global.token)
}

