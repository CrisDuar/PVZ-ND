if sprite_index==buzon2_spr and !instance_exists(fadeout_obj){
    global.price=cond
    global.nota=lvl+1
    audio_stop_all();
    room_goto(r)
}

