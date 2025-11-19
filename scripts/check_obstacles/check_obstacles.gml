function check_obstacles(){
	
	if (distance_to_object(crater1_obj)>0
	and distance_to_object(ice_obj)>0
	and distance_to_object(parentobstacle_obj)>0
	and distance_to_object(obstacleattack_obj)>0
	and distance_to_object(obstaclezombie_obj)>0){
		
		return true;
	}else{
		
		return false;
	}

}