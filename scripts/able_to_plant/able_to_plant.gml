/// @description able_to_plant(PLANT_ID)
/// @param PLANT_ID
function able_to_plant(argument0) {

	//(0=cannot plant, 1=can plant, 2 3=wallnut first aid)
	var plant_id = argument0
	var _able=0

	if plant_id == 0{
	    return 0;
	}

	if x<trazo_obj.x{
	    //Wall nut first aid
	    if global.upgrade3==true and control_obj.multijugador==false{
	        if (plant_id==4 or plant_id==17 or plant_id==21 or plant_id==32 or plant_id==50) {
	            if (distance_to_object(typeplant_obj)<1 
	            and (instance_nearest(x,y,typeplant_obj)).wall_id==plant_id
	            and (instance_nearest(x,y,typeplant_obj)).wallbroken=true){
	                //wallnut_first_aid();
	                _able=2;
	            }
	        }else if (plant_id==57){
	            if (distance_to_object(pumpkin_obj)<1 
	            and (instance_nearest(x,y,pumpkin_obj)).wall_id==plant_id
	            and (instance_nearest(x,y,pumpkin_obj)).wallbroken=true){
	                //wallnut_first_aid();
	                _able=3;
	            }
	        }
	    }
    
	    if plant_id==20{//Coffee bean
	        if distance_to_object(granocafe_obj)>0{
	            if (distance_to_object(typeplant_obj)<1 and (instance_nearest(x,y,typeplant_obj)).cancoffee=true and (instance_nearest(x,y,typeplant_obj)).sleep=true){
	                _able=1;
	            }
	        }
	    }else if plant_id==12{//Garlic drone
	        if distance_to_object(garlicdrone_obj)>0 and distance_to_object(rotinabo_obj)>0{
	            _able=1;
	        }
	    }else if plant_id==57{//calabaza
	        if distance_to_object(pumpkin_obj)>0{
	            if (distance_to_object(crater1_obj)>0
	            and distance_to_object(ice_obj)>0
	            and distance_to_object(parentobstacle_obj)>0
	            and distance_to_object(obstacleattack_obj)>0
	            and distance_to_object(obstaclezombie_obj)>0){
	                _able = check_water(plant_id);
	            }
	        }
	    //Acuáticas y terrestres
	    }else if ((plant_id==14 and is_costume_selected(menupuff_obj, 1)/*global.costumes[# 1, 6] = 1 and global.costumes[# 2, 6]==1*/)//Sea-shroom
	    or plant_id==39//Guacodile
	    or (plant_id==31 and distance_to_object(nenufar_obj)>10)//Narcissus
	    or (plant_id==41 and distance_to_object(nenufar_obj)>10))//Cattail
	    {
	        if distance_to_object(tanglekelp_obj)>0 and distance_to_object(typeplant_obj)>0 and distance_to_object(crater1_obj)>0 and distance_to_object(ice_obj)>0
	        and distance_to_object(parentobstacle_obj)>0 and distance_to_object(obstaclezombie_obj)>0 and distance_to_object(obstacleattack_obj)>0{
	            _able=1;
	        }
	    //voladoras acuáticas y terrestres
	    }else if ((plant_id==34 and distance_to_object(garlicdrone_obj)>0)//Rotobaga
	    or plant_id==52){//Ghost pepper
	        if distance_to_object(tanglekelp_obj)>0 and distance_to_object(typeplant_obj)>0
	        and distance_to_object(parentobstacle_obj)>0 and distance_to_object(obstaclezombie_obj)>0 and distance_to_object(obstacleattack_obj)>0{
	            _able=1;
	        }
	    }else if (plant_id==28){//nenufar
	        if (distance_to_object(charco0_obj)<2 or water==true or distance_to_object(charco_obj)<2){
	            if distance_to_object(crater1_obj)>0 and distance_to_object(parentobstacle_obj)>0 and distance_to_object(ice_obj)>0 
	            and distance_to_object(obstaclezombie_obj)>0 and distance_to_object(obstacleattack_obj)>0
	            and distance_to_object(nenufar_obj)>0 and distance_to_object(narciso_obj)>0 and distance_to_object(cattail_obj)>0 and distance_to_object(tanglekelp_obj)>0
	            and distance_to_object(bowlingbulb_obj)>0 and distance_to_object(potatomine_obj)>0 and distance_to_object(patatomine2_obj)>0{
	                _able=1;
	            }
	        }
	    }else if (plant_id==29){//ZAMPALGA
	        if (water==true or distance_to_object(charco_obj)<2)
	        and distance_to_object(typeplant_obj)>0
	        and distance_to_object(nenufar_obj)>0
	        and distance_to_object(tanglekelp_obj)>0
	        and distance_to_object(crater1_obj)>0
	        and distance_to_object(ice_obj)>0
	        and distance_to_object(obstaclezombie_obj)>0
	        and distance_to_object(parentobstacle_obj)>0
	        and distance_to_object(obstacleattack_obj)>0{
	            _able=1;
	        }
	    }else if plant_id==16{
	        if distance_to_object(gravedetect_obj)<1 and distance_to_object(gravebuster_obj)>0 and distance_to_object(signclaire_obj)>0{
	            _able=1;
	        } 
	    }else if (distance_to_object(typeplant_obj)>0 
	    and distance_to_object(crater1_obj)>0
	    and distance_to_object(ice_obj)>0
	    and distance_to_object(parentobstacle_obj)>0
	    and distance_to_object(obstacleattack_obj)>0
	    and distance_to_object(obstaclezombie_obj)>0){
        
	        _able = check_water(plant_id);
    
	            /*
	        var _ground = (plant_id==3 or plant_id==11 or plant_id==31);
    
	        if (water==false and distance_to_object(charco_obj)>0){
            
	            if (_ground){
                
	               if (distance_to_object(nenufar_obj)>0) _able = 1
            
	            }else{
	                _able = 1
	            }
	        }else{
	             if (distance_to_object(nenufar_obj)<1 and !_ground) _able = 1;
	        }*/
	    }
	}else if (control_obj.multijugador==true or room==iplant_rm or room == nivel14_rm) and plant_id==16{
	    if distance_to_object(gravedetect_obj)<1 and distance_to_object(gravebuster_obj)>0 and distance_to_object(signclaire_obj)>0{
	        _able=1;
	    }
	}

	return _able;




}
