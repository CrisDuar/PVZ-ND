if l>0 l-=0.005
image_xscale+=l
image_yscale+=l

if image_index>9{
image_speed=0
image_alpha-=0.1
}

if image_alpha<=0 instance_destroy();

