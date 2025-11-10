with(instance_create(x,y-60,powie_obj)){
    sprite_index=doom_spr
}
repeat(20){part_particles_create(control_obj.part, x+irandom_range(-50,50), y+irandom_range(-40,20)-220, control_obj.p25, 1)}
repeat(15){part_particles_create(control_obj.part, x+irandom_range(-50,50), y+irandom_range(-40,20)-220, control_obj.p24, 1)}

repeat(20){part_particles_create(control_obj.part, x+irandom_range(-120,120), y+irandom_range(-40,40)-190, control_obj.p25, 1)}
repeat(20){part_particles_create(control_obj.part, x+irandom_range(-120,120), y+irandom_range(-40,40)-190, control_obj.p24, 1)}

t=90

