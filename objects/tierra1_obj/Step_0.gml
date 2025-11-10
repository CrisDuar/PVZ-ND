depth=-y-30

if image_alpha<=0 and desapareciendo=true{
instance_destroy();
}

if image_yscale<1 and image_xscale<1{
image_yscale+=0.05
image_xscale+=0.05
image_alpha+=0.01
}
else
{desapareciendo=true}

if desapareciendo=true
{
image_yscale-=num/1
image_xscale-=num/1.8
image_alpha-=num/2.6

if num<0.1{
num+=0.01
}
}



