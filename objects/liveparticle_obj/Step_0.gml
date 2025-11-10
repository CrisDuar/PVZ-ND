depth=-y-80;

if vspeed>0{vspeed-=0.02}
image_alpha-=0.05

if image_alpha<=0{
instance_destroy();
}

