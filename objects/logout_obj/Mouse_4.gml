image_xscale=0.98
image_yscale=0.98
audio_play_sound(selectstone1_snd,1,false)
with(apicontrol_obj){
    gj_session_ping(false);
    gj_user_logout()
    login = -1
    data_import=0
    logged=false
    http_data[0] = -1
    global.user=""
    global.token=""
}

instance_create(0,0,fadeout_obj)
__view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) - (1088) )

