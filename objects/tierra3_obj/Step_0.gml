depth=-y-30

if image_alpha<=0 and desapareciendo=true
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
image_yscale-=num/2.3
image_xscale-=num/3.4
image_alpha-=num/2.3

if num<0.15{
num+=0.005
}
}



