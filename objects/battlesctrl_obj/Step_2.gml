if (!spawn){
	//Spawns targets
	for (var i = 0; i < row; i++){
		instance_create_layer(1120, zombispawn_obj.rows_arr[i],"Instances",zombiediana_obj);
	}
		
	if (room == iplant_rm){
        
		//SPAWNS THE GRAVES' SPAWNERS
        for(var i = 0; i < 3; i++){
            for(var j = 0; j < row; j++){
				
                with(instance_create_layer(instance_nearest(856+90*i,get_closest_row(176+100*j),pastoinv_obj).x, zombispawn_obj.rows_arr[j],"Instances",spawngraves_par_obj)){
                    type = 0;
                }
            }
        }
    }
	
	spawn = true;
}