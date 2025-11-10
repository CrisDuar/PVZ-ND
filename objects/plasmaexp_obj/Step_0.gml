depth=-y-100
angle+=5

if image_alpha<=0 and desapareciendo=true{
instance_destroy();
}

if scl<1.5{
    scl+=0.1
}else{
    desapareciendo=true
}

if desapareciendo=true{
    scl-=(num/2)
    image_alpha-=num
    
    if num<0.2 num+=0.01
}

