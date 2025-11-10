if (totalgraves<maxgraves and global.iniciogame=true) or (totalgraves<graves and global.iniciogame=false){
    
    if distance_to_object(gravedetect_obj)>0
    and distance_to_object(caja_obj)>0
    and distance_to_object(crater1_obj)>0
    and distance_to_object(typeplant_obj)>0{
    
        with(instance_create(x,y,animgrave_obj)){gravetype=other.type}
        
    }
}

