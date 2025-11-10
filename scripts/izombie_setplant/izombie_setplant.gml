/// @description izombie_setplant(plant)
/// @param plant
function izombie_setplant(argument0) {
	if (distance_to_object(typeplant_obj)>0)
	or (argument0==garlicdrone_obj and distance_to_object(garlicdrone_obj)>0){
	instance_create(x,y+25,argument0)
	}



}
