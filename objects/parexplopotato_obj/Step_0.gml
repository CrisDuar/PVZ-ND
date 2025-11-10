depth=-y-40

if image_alpha<=0 and desapareciendo=true
{
instance_destroy();
}


if /*image_alpha<=1 and*/ desva=false{
image_alpha+=0.05
}
else{
image_alpha-=0.04
}


if speedlimit>0
{
speedlimit-=1
}
else
    {
if vspeed<0.7{
vspeed+=0.3
}
    }

/* */
/*  */
