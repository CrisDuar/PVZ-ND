var _gravetype = control_obj.gravesTypes[type].grave;
var _totalgraves = instance_number(gravedetect_obj)+instance_number(animgrave_obj);

if (_totalgraves < control_obj.maxgraves and global.iniciogame) or (_totalgraves < control_obj.graves and !global.iniciogame){
    
    if distance_to_object(gravedetect_obj)>0
    and distance_to_object(caja_obj)>0
    and distance_to_object(crater1_obj)>0
    and distance_to_object(typeplant_obj)>0{
    
        with(instance_create(x,y,animgrave_obj)){gravetype = _gravetype}
        
    }
}

