function set_plant() {
	if water=false{
	    if distance_to_object(charco_obj)<2{
	        snd1=aguaplant_snd
	        snd2=aguaplant_snd
	    }else{
	        snd1=plantado1_snd
	        snd2=plantado2_snd
	    }
	}else{
	    //logro
	    with(logros_obj){pool_closed = false}
	}

	if (column > 0){
	    //logro
	    with(logros_obj){long_enough = false}
	}

	with(menuplants_obj){
	    if select=control_obj.seleccionado and localselect!=0{
	        audio_play_sound(choose(other.snd1,other.snd2),1,false)
    
	        with(instance_create(floor(other.x+xx),floor(other.y+yy-other.offset),plant)){
	            disfraz=other.costume_packet
	            event_user(0)
            
	            plant_cost=other.cost
	            tileyy=other.yy
	            tilexx=other.xx
	        }
        
	        control_obj.seleccionado=0;
        
	        if type==0{
	            control_obj.soles -= cost;
            
	            t_rechar=timer*60;
	            localselect=0;
	        }else{
	            instance_destroy()
	        }
	        break;
	    }
	}



}
