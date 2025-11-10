c_frost=make_colour_rgb(137,217,255)
sound=false
water=false
efecto=0
alarm[0]=room_speed*5

if image_blend!=c_white{
    image_speed=0.09
}
else{
    image_speed=0.18
}

if control_obj.invisible==true {image_alpha=0; instance_destroy();}


