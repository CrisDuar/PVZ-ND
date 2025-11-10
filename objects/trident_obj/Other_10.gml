if attack_done==false{
    attack_done=true
    part_particles_create(control_obj.part, x-random_range(-10,12), y, control_obj.p1, 20);
    create_explosion(x,get_closest_row(y)-20,1,3.2,0.6,wetbrains_attack_snd)
    
    if instance_exists(boss2_obj){
        if boss2_obj.fase==2 and x>450{
            with(instance_create(x+100,get_closest_row(y),rayo_anim_obj)){
                obj=imp_obj
            }
        }
    }
}

_diff = angle_difference(90, image_angle);
image_angle+=_diff*0.1

if instance_exists(boss2_obj){
    move_towards_point(boss2_obj.x,boss2_obj.y-20,15)
    if distance_to_object(boss2_obj)<5{
        instance_destroy();
        boss2_obj.image_index=17
    }
}else{
    instance_destroy();
}

