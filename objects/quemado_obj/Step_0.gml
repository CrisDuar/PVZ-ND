depth=-y-5;

if image_alpha<1 image_alpha+=0.05

if image_index>image_number-1{
    image_speed=0;
    desapareciendo=true
}

if (desapareciendo) image_alpha-=0.1;
if (image_alpha<=0) instance_destroy();

