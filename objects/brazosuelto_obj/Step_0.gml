if desapareciendo<=0
{image_alpha-=0.05}

if image_alpha<=0
{instance_destroy();}

if cayendo=true
{
image_angle-=2.5
vspeed+=0.3
}
else
{
vspeed=0
desapareciendo-=1

if hspeed>0
{
hspeed-=0.1
}
if hspeed<0
{
hspeed+=0.1
}
}

