if global.lang="en"{
image_index=0
}

if global.lang="es"{
image_index=1
}

if (t > 0){
	t--
}else{
	if global.user!="" and global.token!="" and os_is_network_connected(){
	    apicontrol_obj.login = gj_user_login(global.user,global.token)
	}
}

