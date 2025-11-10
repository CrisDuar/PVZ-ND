for (var i = 0; i < 10; i++){
    if device_mouse_check_button_pressed(i, mb_any){
        with(instance_create(device_mouse_x(i),device_mouse_y(i),multidot_obj)){
            touch = i;
        }
    }
}

