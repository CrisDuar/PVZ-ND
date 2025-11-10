/// @description wallnut_first_aid()
function wallnut_first_aid(argument0) {
	var proceed = false
	var wallplant = argument0

	with(wallplant){
	    if wall==true and wallbroken=true{
	        vida = maxhp
	        proceed=true
        
	        poison=false
	        poisontime=0
	        particle=0
	    }
	}

	if proceed==true and control_obj.multijugador==false{
	    if water=false{
	        if distance_to_object(charco_obj)<2{
	            snd1=aguaplant_snd
	            snd2=aguaplant_snd
	        }else{
	            snd1=plantado1_snd
	            snd2=plantado2_snd
	        }
	    }
	    audio_play_sound(choose(snd1,snd2),1,false)
	    audio_play_sound(coffee2_snd,1,false)
    
	    with(menuplants_obj){
	        if select=control_obj.seleccionado and localselect!=0{
	            localselect=0
	            control_obj.seleccionado=0
            
	            if type==0{
	                control_obj.seleccionado=0;
	                control_obj.soles -= cost;
                
	                t_rechar=timer*60;
	                localselect=0;
	            }else{
	                instance_destroy()
	            }
	        }
	    }
	}



}
