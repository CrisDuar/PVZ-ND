if image_index>=7.9{
image_speed=0
image_alpha-=0.05
}

if image_alpha<=0{
instance_destroy();
}

