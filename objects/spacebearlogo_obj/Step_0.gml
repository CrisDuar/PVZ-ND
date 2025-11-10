if desapareciendo=true{image_alpha-=0.1; splalpha=-0.1}
else{if image_alpha<1{image_alpha+=0.1}}

if splash=true 
and desapareciendo=false 
and splalpha<1
{splalpha+=0.1}

if back==true backalpha-=0.05
if backalpha<=0 instance_destroy();


