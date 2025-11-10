event_inherited();

//OBJ ES EL PASTO

var done = false

with(obj){
    if distance_to_object(animgrave_obj)>10
    and distance_to_object(gravedetect_obj)>10
    and distance_to_object(crater1_obj)>10
    and distance_to_object(caja_obj)>10{
        with(instance_create(x,get_closest_row(y+40-offset),animgrave_obj)){
            gravetype=drheals_obj
        }
        
        done = true
    }
}
if instance_exists(doctor){
    if (done){
        doctor.amount--
    }
}
instance_destroy();

