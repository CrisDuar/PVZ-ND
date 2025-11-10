event_inherited();
depth=-y-10
image_xscale+=0.002
image_yscale+=0.002

if image_index>=image_number-0.5{img=0}

if timer<=0{
    if explo==false{
        explo=true
    
        instance_create(x,y,powie_obj)
        part_particles_create(control_obj.part, x-random_range(-10,12), y, control_obj.p1, 40);
        create_explosion(x,y,0,3.2,2.85,explocherry_snd, 15, 70, true)
    //with(instance_create(x,y,explosion_obj)){image_xscale=3; image_yscale=3}
    }
    logros_obj.healthy_garden = false
    instance_destroy();
}else{
    timer-=1
}

