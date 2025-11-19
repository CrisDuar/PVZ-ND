/// @description able_to_plant(PLANT_ID)
/// @param PLANT_ID
function able_to_plant(plant_id) {

	//(0=cannot plant, 1=can plant, 2 3=wallnut first aid)
	
	if (plant_id == 0) return 0;
	
	var plant_data = global.plants_packets[plant_id - 1];

	if x<trazo_obj.x{
	    //Wall nut first aid
	    if (global.progress[? "upgrade3"] and !control_obj.multijugador){
			
			if (struct_get_default(plant_data, "wall_heal", false)){
				
				if (plant_id == 57){ //Pumpkin
		            if (distance_to_object(pumpkin_obj)<1 
		            and (instance_nearest(x,y,pumpkin_obj)).wall_id==plant_id
		            and (instance_nearest(x,y,pumpkin_obj)).wallbroken=true){
						
						return 3;
		            }
				}else { //Other wall plants
		            if (distance_to_object(typeplant_obj)<1 
		            and (instance_nearest(x,y,typeplant_obj)).wall_id==plant_id
		            and (instance_nearest(x,y,typeplant_obj)).wallbroken=true){
						
						return 2;
		            }
		        }
			}
	    }
		
		switch(struct_get_default(plant_data, "place_type", 0)){
			
			default: //Common plants
			
				if (distance_to_object(typeplant_obj)>0 and check_obstacles()) return check_water(plant_id);
			
			break;
			
			case 1: //Garlic drone
			
				if (distance_to_object(garlicdrone_obj)>0 and distance_to_object(rotinabo_obj)>0) return 1;
				
			break;
			
			case 2: //Amphibious
				
				//Narcissus & Cattail
				if (plant_id==41 or plant_id==31)
				and (distance_to_object(nenufar_obj)<=0){
					
					return 0;
				}
				
			    if distance_to_object(tanglekelp_obj)>0 
				and distance_to_object(typeplant_obj)>0 
				and check_obstacles(){
					
			        return 1;
			    }
				
			break;
			
			case 3: //Flying plants
			
				if (plant_id == 34 and distance_to_object(garlicdrone_obj) <= 0) return 0;//Rotobaga
			    
				
			    if distance_to_object(tanglekelp_obj)>0 
				and distance_to_object(typeplant_obj)>0
			    and check_obstacles(){
					
			        return 1;
				}
			
			break
			
			case 4: //Grave buster
				
				if distance_to_object(gravedetect_obj)<1
				and distance_to_object(gravebuster_obj)>0
				and distance_to_object(signclaire_obj)>0{
					
		            return 1;
		        } 
				
			break;
			
			case 5: //Coffee bean
				
				if (distance_to_object(granocafe_obj)>0 and distance_to_object(typeplant_obj)<1){
		            if ((instance_nearest(x,y,typeplant_obj)).cancoffee
					and (instance_nearest(x,y,typeplant_obj)).sleep){
		                return 1;
		            }
				}
				
			break;
			
			case 6: //lily-pad
				
				if (distance_to_object(charco0_obj)<2
				or distance_to_object(charco_obj)<2
				or water==true){
					
		            if check_obstacles()
		            and distance_to_object(nenufar_obj)>0
					and distance_to_object(narciso_obj)>0
					and distance_to_object(cattail_obj)>0
					and distance_to_object(tanglekelp_obj)>0
		            and distance_to_object(bowlingbulb_obj)>0
					and distance_to_object(potatomine_obj)>0
					and distance_to_object(patatomine2_obj)>0{
		                return 1;
		            }
		        }
				
			break;
			
			case 7: //tangle kelp
				
				if (water==true or distance_to_object(charco_obj)<2)
			    and distance_to_object(typeplant_obj)>0
			    and distance_to_object(nenufar_obj)>0
			    and distance_to_object(tanglekelp_obj)>0
			    and check_obstacles(){
			        return 1;
			    }
				
			break;
			
			case 8: //Pumpkin
				
				if distance_to_object(pumpkin_obj)>0{
			        if (check_obstacles()){
					
			            return check_water(plant_id);
			        }
			    }
		}
		
	}else if (control_obj.multijugador==true or room==iplant_rm or room == nivel14_rm) and plant_id==16{
		
	    if distance_to_object(gravedetect_obj)<1
		and distance_to_object(gravebuster_obj)>0
		and distance_to_object(signclaire_obj)>0{
			
	        return 1;
	    }
	}

	return 0;
}


///OLD CODE

/*
	    if plant_id==20{//Coffee bean
	        if distance_to_object(granocafe_obj)>0{
	            if (distance_to_object(typeplant_obj)<1 
				and (instance_nearest(x,y,typeplant_obj)).cancoffee=true 
				and (instance_nearest(x,y,typeplant_obj)).sleep=true){
	                _able=1;
	            }
	        }
	    }else if plant_id==12{//Garlic drone
	        if distance_to_object(garlicdrone_obj)>0 and distance_to_object(rotinabo_obj)>0{
	            _able=1;
	        }
	    }else if plant_id==57{//Pumpkin
	        if distance_to_object(pumpkin_obj)>0{
	            if (check_obstacles()){
					
	                _able = check_water(plant_id);
	            }
	        }
	    //Amphibious plants
	    }else if ((plant_id==14 and is_costume_selected(menupuff_obj, 1))//Sea-shroom
	    or plant_id==39//Guacodile
	    or (plant_id==31 and distance_to_object(nenufar_obj)>10)//Narcissus
	    or (plant_id==41 and distance_to_object(nenufar_obj)>10))//Cattail
	    {
	        if distance_to_object(tanglekelp_obj)>0 
			and distance_to_object(typeplant_obj)>0 
			and check_obstacles(){
	            _able=1;
	        }
	    //voladoras acuáticas y terrestres
	    }else if ((plant_id==34 and distance_to_object(garlicdrone_obj)>0)//Rotobaga
	    or plant_id==52){//Ghost pepper
	        if distance_to_object(tanglekelp_obj)>0 
			and distance_to_object(typeplant_obj)>0
	        and distance_to_object(parentobstacle_obj)>0 
			and distance_to_object(obstaclezombie_obj)>0 
			and distance_to_object(obstacleattack_obj)>0{
	            _able=1;
	        }
	    }else if (plant_id==28){//nenufar
	        if (distance_to_object(charco0_obj)<2 or water==true or distance_to_object(charco_obj)<2){
	            if check_obstacles()
	            and distance_to_object(nenufar_obj)>0
				and distance_to_object(narciso_obj)>0
				and distance_to_object(cattail_obj)>0
				and distance_to_object(tanglekelp_obj)>0
	            and distance_to_object(bowlingbulb_obj)>0
				and distance_to_object(potatomine_obj)>0
				and distance_to_object(patatomine2_obj)>0{
	                _able=1;
	            }
	        }
	    }else if (plant_id==29){//TANGLE KELP
	        if (water==true or distance_to_object(charco_obj)<2)
	        and distance_to_object(typeplant_obj)>0
	        and distance_to_object(nenufar_obj)>0
	        and distance_to_object(tanglekelp_obj)>0
	        and check_obstacles(){
	            _able=1;
	        }
	    }else if plant_id==16{ //GRAVEBUSTER
	        if distance_to_object(gravedetect_obj)<1
			and distance_to_object(gravebuster_obj)>0
			and distance_to_object(signclaire_obj)>0{
	            _able=1;
	        } 
	    }else if (distance_to_object(typeplant_obj)>0 
	    and distance_to_object(crater1_obj)>0
	    and distance_to_object(ice_obj)>0
	    and distance_to_object(parentobstacle_obj)>0
	    and distance_to_object(obstacleattack_obj)>0
	    and distance_to_object(obstaclezombie_obj)>0){
        
	        _able = check_water(plant_id);

	    }*/