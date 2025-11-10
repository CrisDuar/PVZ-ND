image_xscale=0.98
image_yscale=0.98
audio_play_sound(selectstone1_snd,1,false)

with(textbox_obj){
    if id_var="username"{
        global.user=string(str)
    }
    
    if id_var="token"{
        global.token=string(str)
    }
}

if global.user!="" and global.token!="" and os_is_network_connected(){
    apicontrol_obj.login = gj_user_login(global.user,global.token)
}else{
    audio_play_sound(errorseed_snd,1,false);
}

