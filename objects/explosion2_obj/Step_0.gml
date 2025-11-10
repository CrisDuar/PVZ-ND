depth=-y+21

if image_yscale<=0 and image_xscale<=0 and desapareciendo=true
{
instance_destroy();
}

if image_yscale<1 and image_xscale<1{
image_yscale+=0.1
image_xscale+=0.1
}
else
{desapareciendo=true}

if desapareciendo=true
{
image_yscale-=num
image_xscale-=num

if num<0.2{
num+=0.01
}
}



