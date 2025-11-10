type=choose(grave1_obj,grave2_obj,grave3_obj,grave6_obj,soulgrave_obj)

event_inherited();

/*if instance_number(gravedetect_obj)<maxgraves
and instance_number(animgrave_obj)<maxgraves{
if distance_to_object(gravedetect_obj)>0{
with(instance_create(x,y,animgrave_obj)){
if room==survival1_rm gravetype=choose(grave1_obj,grave2_obj,grave3_obj,grave6_obj,soulgrave_obj)
if room==survival2_rm gravetype=choose(grave1_obj,grave2_obj,grave3_obj,grave6_obj,soulgrave_obj, drheals_obj)
}
}
}

/* */
/*  */
