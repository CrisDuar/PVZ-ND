event_inherited();

//Recuperar el target
if instance_exists(obj){
    if (tries < 10){
        with(obj){
            //if distance_to_object(saveseedcasilla_obj)<1{
            if (in_danger == true){
               other.obj=instance_nth_nearest(x,y,typeplant_obj,2)
               other.tries++
            }
        }
    }
}else{
    if instance_exists(typeplant_obj){
        obj=instance_nearest(x,y,typeplant_obj)
        x1 = x
        y1 = y
        t=0
    }else{
        instance_destroy();
    }
}

direction = point_direction(x,y,x3,y3)

