if image_angle>-60{
    image_angle-=5
}else{
    if image_alpha>0{
        image_alpha-=0.05
    }else{
        instance_destroy();
    }
}

