if timer>0{
    timer-=1
}else{
    image_alpha-=0.05
    if image_alpha<=0 instance_destroy();
}

