if instance_exists(pause_menu_obj){image_alpha=0}else{image_alpha=1}

if global.gameover=true{
instance_destroy();
}

x=x2+__view_get( e__VW.XView, 0 )
y=y2+__view_get( e__VW.YView, 0 )

if os_type==os_android{
    if os_is_paused() or keyboard_check_pressed(vk_backspace){
        event_perform(ev_keypress,vk_escape)
    }
}
with(all){
    if variable_instance_exists(id,"part"){
        if part_system_exists(part){
            part_system_automatic_draw(part,true)
            part_system_automatic_update(part,true)
        }
    }
}

