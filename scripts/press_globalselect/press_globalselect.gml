/// @description press_globalselect(reselect?)
/// @param reselect?
function press_globalselect(resel) {
	
	var _x1 = menuselectplan_obj.x - 300 + 300*type;
	var _x2 = menuselectplan_obj.x + 626*type;
	
	if resel<0{
	    objetive = get_objetive(menuselectplan_obj.x,0,xz*type,640, type);
	}else{
	    objetive = get_objetive_reselect(menuselectplan_obj.x,0,xz*type,640, resel, type);
	}

	if (visible==true or resel>=0){
	    if vspeed=0 and menuselectplan_obj.zomplant=type{
	        if sprite_index=sprite and ban==false{
	        /*and variable_instance_exists(objetive, "ocupied"){*/
	            if resel<0{
	                audio_play_sound(seleccionarplantas_snd, 1, false);
	                if (!select) audio_play_sound(seedpack_snd, 1, false)
	            }
	            update_info()
	            //crear el objeto que va a ir al select_obj
	            if objetive!=0{
	                if objetive.ocupied=false and select=false{
	                    with(objetive){
	                        ocupied=true
	                        seed=other.packet;
	                        type=other.type;
	                        slotsprite=other.sprite;
	                    }
                   
	                    with(instance_create(x,y,selectanim_obj)){
	                        sprite_index=other.sprite;
	                        seed=other.packet;
	                        seedsprite=other.sprite;
	                        finalobj=other.objetive;
	                        og=other.id;
	                        set_costume_sprites();
	                    }
                    
	                    select=true//seleccionado
	                }
	            }
	        }else{
	            audio_play_sound(errorseed_snd,1,false)
	        }
	    }
	}



}
