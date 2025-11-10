//scroll with mouse

if (mouse_check_button_pressed(mb_left)){
    dx = mouse_x
    drag=scroll
    draggin=true
}

if mouse_wheel_up() scroll=clamp(scroll-15,0,limit)
if mouse_wheel_down() scroll=clamp(scroll+15,0,limit)

if (mouse_check_button_released(mb_left)) draggin = false;

if (mouse_check_button(mb_left) and draggin){
    scroll = dx-(mouse_x-drag)
    scroll = clamp(scroll,0,limit)
}

scroll = clamp(scroll,0,limit)

