if (global.videoq > 0) part_particles_create(control_obj.part, x+random_range(-3,3), y+random_range(-3,3), control_obj.p4, 10);
repeat(2){

    if hspd<0 or (direction >90 and direction < 270){
        var _xs = -1
    }else{
        var _xs = 1
    }
    
    with(instance_create(x,y,fireatack_obj)){
         image_xscale = _xs
    }
}
part_system_destroy(part)

