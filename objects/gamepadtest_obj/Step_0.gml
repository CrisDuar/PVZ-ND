//if gamepad_button_check(0, gp_padl) x--
////if joystick_axes(0) x--

//x = mouse_x
//y = mouse_y
/*
if gp_support{
    var haxis = gamepad_axis_value(4, gp_axislh);
    var vaxis = gamepad_axis_value(4, gp_axislv);
    
    direction = point_direction(0, 0, haxis, vaxis);
    speed = point_distance(0 ,0, haxis, vaxis) * 5;
}

if gamepad_button_check_pressed(4, gp_face1) image_xscale+=0.1
if gamepad_button_check_pressed(4, gp_face2) image_xscale-=0.1
if gamepad_button_check_pressed(4, gp_face3) image_yscale+=0.1
if gamepad_button_check_pressed(4, gp_face4) image_yscale-=0.1

if gamepad_button_check_pressed(4, gp_start) image_blend=make_colour_rgb(irandom(255),irandom(255),irandom(255))

/* */
/*  */
