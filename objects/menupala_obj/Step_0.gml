if global.iniciogame=false{
    image_alpha=0
}else{
    image_alpha=1
}


if (control_obj.pala){
    sprite_index=palaslot2_spr
}else{
    sprite_index=palaslot1_spr
}

if (keyboard_check_pressed(vk_tab)){
    if control_obj.multijugador==false event_perform(ev_mouse,ev_left_press)
}

