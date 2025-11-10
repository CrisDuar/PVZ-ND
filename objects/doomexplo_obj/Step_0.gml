depth=max(-y-200,-969)

if t>0{
    t--
    control_obj.shake=15
}else{
    image_alpha-=0.01
    if image_alpha<=0 instance_destroy();
}

