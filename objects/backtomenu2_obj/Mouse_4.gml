if !instance_exists(fadeout_obj) and !instance_exists(gamepadconfig_obj){
    if mode==0{//GOTO LAST ROOM
        if (mute) audio_stop_all();
		show_debug_message(global.lastroom)
        room_goto(global.lastroom)
    }else if mode==1{//GOTO ROOM
        if (mute) audio_stop_all();
        room_goto(rm)
    }else{//MOVE VIEW'S COORDS
        __view_set( e__VW.XView, 0, vx )
        __view_set( e__VW.YView, 0, vy )
        instance_create(0,0,fadeout_obj)
    }
    audio_play_sound(seleccionarplantas_snd,1,false)
}

