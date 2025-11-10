if t_dis>0{
    t_dis-=1
}else{
    image_alpha-=0.05
    
    if image_alpha<=0 instance_destroy();
}

