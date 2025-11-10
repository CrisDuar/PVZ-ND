if (global.settings_sec == -1){
    __view_set( e__VW.XView, 0, 1088 )
    global.settings_sec = 0
}else if room==settings_rm{
    __view_set( e__VW.YView, 0, 640 * global.settings_sec )
    global.settings_sec = -1
}

