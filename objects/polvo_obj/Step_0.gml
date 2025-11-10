if fase=0{
image_alpha+=0.5
}
if fase=1{
image_alpha-=0.3
}

image_angle+=2
y-=1

if image_alpha <=0{
instance_destroy();
}

