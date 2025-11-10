event_inherited();

if image_index>=6 image_speed=0

if spawn>0{
    spawn-=1
}else{
    spawn=irandom_range(15,30)
    part_particles_create(control_obj.part, x, y, control_obj.p5, 3);
}

