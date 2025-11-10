/// @description tile_free(Only for jumpingplant_obj)
/// @param Only for jumpingplant_obj
function tile_free() {
	var verify=true

	if distance_to_object(parentobstacle_obj)<1
	or distance_to_object(obstacleattack_obj)<1
	or distance_to_object(obstaclezombie_obj)<1
	or (distance_to_object(typeplant_obj)<1 and other._aquatic != 5)
	or distance_to_object(tanglekelp_obj)<1
	or x>=trazo_obj.x
	or ((water==true or distance_to_object(charco_obj)<1) and (other._aquatic==0 or other._aquatic == 5) and distance_to_object(nenufar_obj)>10)//Ground plants (lilypad)
	or ((water==true or distance_to_object(charco_obj)<1 or distance_to_object(nenufar_obj)<1) and other._aquatic==3)//Ground plants (NO lilypad)
	or (((water==false and distance_to_object(charco_obj)>1) or distance_to_object(nenufar_obj)<1) and other._aquatic==1)//Aquatic plants (NO lilypad)
	or (distance_to_object(crater1_obj)<1 and other._aquatic!=2)//Flying plants
	or (distance_to_object(nenufar_obj)<1 and other._aquatic==4)//Aquatic/Ground plants (NO lilypad)
	or (distance_to_object(pumpkin_obj)<1 and other._aquatic==5)
	{//Flying plants
	    verify = false
	}

	return verify;



}
