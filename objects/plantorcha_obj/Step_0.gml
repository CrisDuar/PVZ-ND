if (freeze==true or control_obj.rain==true or poison>0){
    onfire = false;
}else{
    onfire = true;
}

if (!onfire){
    sprite_index=plantorcha2_spr
    if glow_alpha>0 glow_alpha-=0.05
}else{
    if glow_alpha<1 glow_alpha+=0.05
    part_particles_create(part, x-random_range(-10,12), y-50, p1, irandom_range(1,2));
    sprite_index=plantorcha1_spr
}

event_inherited();
depth=-y+15

if glow<360{
    glow+=0.5
}else{
    glow=0
}


