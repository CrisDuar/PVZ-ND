/// @description TUMBA SPAWN

if distance_to_object(animgrave_obj)>1 
and distance_to_object(gravedetect_obj)>1
and distance_to_object(caja_obj)>1
and distance_to_object(crater1_obj)>1{
    instance_create(x,y-offset,destroygrave_obj)
    with(instance_create(x-10,get_closest_row(y+40-offset),animgrave_obj)){
        gravetype=grave3_obj
    }
}

