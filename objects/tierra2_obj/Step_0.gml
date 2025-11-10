depth=-y-30

if hspeed>0{hspeed-=0.1}
if hspeed<0{hspeed+=0.1}
if vspeed>0{vspeed-=0.1}
if vspeed<0{vspeed+=0.1}
image_alpha-=0.05

if image_alpha<=0{
instance_destroy();
}

