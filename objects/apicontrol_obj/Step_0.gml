if os_is_network_connected(){
    if gj_user_isloggedin(){
        if logged == 0{
            //http_data[0] = gj_datastore_set_global();
            http_data[1] = gj_user_info_fromusername(gj_user_username())
            logged = 1
        }
        if __view_get( e__VW.XView, 0 )==2176 __view_set( e__VW.XView, 0, 3264 )
    }else{
        logged = 0
        username = ""
        if __view_get( e__VW.XView, 0 )==3264 __view_set( e__VW.XView, 0, 2176 )
    }
}

