event_inherited();

part_particles_create(control_obj.part, x, y, control_obj.p18, choose(0,1))

if instance_exists(obj){
    if type==1{
        with(obj){
            if in_danger other.obj=instance_nth_nearest(x,y,typeplant_obj,2)
        }
    }
}else{
    instance_destroy();
}

direction = point_direction(x,y,x3,y3)

