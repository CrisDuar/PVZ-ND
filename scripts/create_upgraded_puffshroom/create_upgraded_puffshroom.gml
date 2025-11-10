function create_upgraded_puffshroom() {
	var obj = noone
	obj = collision_line_first(x,y-20,x+20,y-20,pastoinv_obj,false,true)

	if obj!=noone{
	    with(obj){
	        if ((distance_to_object(typeplant_obj)>0)
	        or (distance_to_object(garlicdrone_obj)<3 and distance_to_object(typeplant_obj)>1) 
	        or (distance_to_object(nenufar_obj)<1 and distance_to_object(typeplant_obj)>0))
	        and distance_to_object(sunmachine_obj)>0
	        and distance_to_object(gravedetect_obj)>0
	        and distance_to_object(animgrave_obj)>0
	        and distance_to_object(crater1_obj)>0
	        and distance_to_object(ice_obj)>0
	        and distance_to_object(zombiestatua_obj)>0
	        and distance_to_object(caja_obj)>0
	        and distance_to_object(trashcan_obj)>0{
        
	            part_particles_create(control_obj.part, x, y+30, control_obj.p18, 10)
	            instance_create(x,y-20,destroygrave_obj)
	            audio_sound_pitch(audio_play_sound(morfo3_snd, 0.3, false),random_range(0.9,1.1))
	            with(instance_create(floor(x),floor(y+30-offset),minimorfo_obj)){
	                image_alpha=0
	            }
            
	        }
	    }
	}



}
