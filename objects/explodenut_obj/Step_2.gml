if vida<=0 and explo==false{
    explo=true
    instance_create(x,y-30,powie_obj)
    part_particles_create(control_obj.part, x-random_range(-10,12), y-30, control_obj.p1, 40);
    create_explosion(x-3,y-30,0,3,2.7,explocherry_snd)
}

event_inherited();

