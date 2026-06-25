var sp = 10
var _gravetype = control_obj.gravesTypes[type].grave;
var _totalgraves = instance_number(gravedetect_obj)+instance_number(animgrave_obj);

if (_totalgraves<control_obj.maxgraves-round(control_obj.maxgraves/5)){
    if distance_to_object(gravedetect_obj)>0
    and distance_to_object(caja_obj)>0{
        if distance_to_object(typeplant_obj)<1{
            sp = irandom(10)
        }
        if sp>=7{
            
            with(instance_create(x,y,animgrave_obj)){gravetype = _gravetype}
        }
    }
}

