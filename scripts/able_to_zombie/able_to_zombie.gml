/// @description able_to_zombie()
function able_to_zombie() {

	var _able = 0
	var _zombie_id = control_obj.zomseleccionado - 1;

	if control_obj.zomseleccionado==0{
	    return 0;
	}

	if x>trazo_obj.x{
	    if (_zombie_id == zombies_id.OBST_ZOMGRAVE or control_obj.zomseleccionado==19){//Tumbas
	        if distance_to_object(animgrave_obj)>1
	        and distance_to_object(gravedetect_obj)>1
	        and distance_to_object(caja_obj)>1
	        and distance_to_object(crater1_obj)>1{
	            
				return 1;
	        }    
	    }else if (control_obj.zomseleccionado==24 or control_obj.zomseleccionado==26){//Zomboni and sun stealer
	        if water==false{
	            _able = 1;
	        }
	    }else if (control_obj.zomseleccionado==29){//BEACH BALL
	        if instance_exists(typeplant_obj){
	            _able = 1;
	        }
	    }else if control_obj.zomseleccionado!=35{
	        _able = 1;
	    }
	}else if x<trazo_obj.x{
	    if control_obj.zomseleccionado==35{//ZOMBIE MOLOTOV
	        _able = 1;
	    }
	}
	return _able;



}
