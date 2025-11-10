if desapareciendo=true{
image_alpha-=0.02
}else{
x=xstart+choose(-1,0,1)
y=ystart+choose(-1,0,1)
}

if image_yscale<1 and image_xscale<1{
image_yscale+=num
image_xscale+=num
}
else
{restando=true}

if restando=true
{
image_yscale-=num
image_xscale-=num

if num<0.1 and image_xscale>0.8 and image_yscale>0.8 and image_xscale<=0 and image_yscale<=0 {
num+=0.005
}
}


if image_alpha<=0
{instance_destroy();}

