depth=-y-85

if image_alpha<=0
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
image_yscale-=num/2
image_xscale-=num/2
image_alpha-=num

if num<0.2{
num+=0.01
}
}



