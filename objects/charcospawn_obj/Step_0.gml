if distance_to_object(pastoinv_obj)<1{
    with(instance_nearest(x,y,pastoinv_obj)){
        if distance_to_object(charco_obj)>1 and water=false{
            instance_create(x,y+30-offset,charco_obj)
            instance_destroy(other);
        }     
    }
}

