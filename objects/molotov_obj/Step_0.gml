event_inherited();
image_angle+=2.5

//Luz en la niebla
if glow<360{
    glow+=0.5
}else{
    glow=0
}

//Apagarse si está lloviendo
if control_obj.rain == true fire = false

if fire=true{
    if glow_alpha<1 glow_alpha+=0.05
    part_particles_create(part, x+lengthdir_x(25,image_angle), y+lengthdir_y(25,image_angle), p1, irandom_range(1,2));
}else{
    if glow_alpha>0 glow_alpha-=0.05
}

