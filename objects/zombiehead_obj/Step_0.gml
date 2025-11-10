

if fase !=2 {
vspeed+=0.3
}else{
if num<0{num+=0.25}
if num>0{num-=0.25}
time+=random_range(0.5,1)
if hspeed<0{hspeed+=0.05}
if hspeed>0{hspeed-=0.05}
}

image_angle+=num

if y>=point
and fase=0{
fase=1
vspeed=-2
}

if y>=point+4
and fase=1
and vspeed>0{
fase=2
vspeed=0
}

if w=true and fase=1{
with(instance_create(x,y,tierra1_obj)){sprite_index=agua1_spr}
with(instance_create(x,y,tierra3_obj)){sprite_index=agua3_spr; image_alpha=1}
instance_create(x,y,aguaex_obj)
instance_destroy()
}

if time>=room_speed*0.25{
if desapareciendo>0 desapareciendo-=0.1
}


if desapareciendo<=0
{image_alpha-=0.05}

if image_alpha<=0{instance_destroy()}



/*if desapareciendo<=0
{image_alpha-=0.05}

if image_alpha<=0
{instance_destroy();}

if cayendo=true
{
image_angle+=0.5
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

/* */
/*  */
