depth=-y-25;

if (move > 0){
    move--
    image_speed = 0.25
    
    if (global.videoq > 0){
        if (part_t <= 0){
            repeat(choose(3, 4, 2)){
                part_particles_create(control_obj.part, x + random_range(-46, 46), y - random(130), control_obj.p26, 1)
            }
            part_t = choose(30, 60, 90, 120)
        }else{
            part_t--
        }
    }
}else{
    move = 0
    part_t = 0
    
    if (floor(image_index = 0)) image_speed = 0;
}


//spawnear cosas en la última oleada

if instance_exists(finalwave_obj) and spawned=false{
    alarm[0]=room_speed*random_range(1,3)
    spawned=true
}

