if t>0{
    if alpha<1{
        alpha+=0.001
        if (global.videoq > 0){
            if instance_exists(obj){
                var xx=obj.x
                var yy=obj.y
                part_particles_create(part, xx+random_range(-3,3), yy+random_range(-2,2), p1, irandom_range(1,3));
            }
        }
    }
    t--
}

if t<=0 or !instance_exists(obj){
    if alpha>0 {alpha-=0.001}else{instance_destroy()}
}

