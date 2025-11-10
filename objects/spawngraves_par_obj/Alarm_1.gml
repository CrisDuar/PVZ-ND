var sp = 10

if (totalgraves<maxgraves-round(maxgraves/5)){
    if distance_to_object(gravedetect_obj)>0
    and distance_to_object(caja_obj)>0{
        if distance_to_object(typeplant_obj)<1{
            sp = irandom(10)
        }
        if sp>=7{
            with(instance_create(x,y,animgrave_obj))
            {gravetype=other.type; inispawned=true}
        }
    }
}

