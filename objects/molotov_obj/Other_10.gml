if fire==true{
    part_type_direction(control_obj.p2,-30,30,0,1);
    part_particles_create(control_obj.part, x-random_range(-10,12), y, control_obj.p2, 15);

    part_type_direction(control_obj.p2,60,120,0,1);
    part_particles_create(control_obj.part, x-random_range(-10,12), y, control_obj.p2, 15);
    
    part_type_direction(control_obj.p2,240,300,0,1);
    part_particles_create(control_obj.part, x-random_range(-10,12), y, control_obj.p2, 15);
    
    part_type_direction(control_obj.p2,150,210,0,1);
    part_particles_create(control_obj.part, x-random_range(-10,12), y, control_obj.p2, 15);
    
    
    create_explosion(x,get_closest_row(y)-20,6,3.2,0.4,molotov_snd)
    
    create_explosion(x,get_closest_row(y-90)-20,6,1.3,0.4,nada_snd)
    create_explosion(x,get_closest_row(y+120)-20,6,1.3,0.4,nada_snd)
}else{
    audio_play_sound(molotov2_snd,1,false)
}
instance_destroy();

