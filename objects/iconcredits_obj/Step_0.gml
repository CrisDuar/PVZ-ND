if timer2<finish{timer-=2; timer2++}


if timer<=0{
timer=tim
image_xscale=1.5
image_yscale=1.5
//if image_angle==0{image_angle=choose(30,-30)}
//else{image_angle=30*-1*sign(image_angle)}
}

if image_angle>0{image_angle-=0.5}
if image_angle<0{image_angle+=0.5}
if image_xscale>1{image_xscale-=0.02}
if image_yscale>1{image_yscale-=0.02}

