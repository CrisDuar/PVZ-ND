event_inherited();
depth=-y-10
image_xscale+=0.002
image_yscale+=0.002

if image_index>=image_number-0.5{img=0}

if timer<=0{
    if explo==false{
        explo=true
        instance_create(x,y,powie_obj)
        part_type_direction(control_obj.p2,-30,30,0,1);
        part_particles_create(control_obj.part, x-random_range(-10,12), y, control_obj.p2, 20);
        
        part_type_direction(control_obj.p2,150,210,0,1);
        part_particles_create(control_obj.part, x-random_range(-10,12), y, control_obj.p2, 20);
        create_explosion(x,y+20,0,3.2,0.4,explocherry_snd, 15, 70, true)
    }
//with(instance_create(x,y,explosion_obj)){image_xscale=3; image_yscale=0.7}
    vida = 0;
}else{
    timer-=1
}

