/// @description do_magnet(zombietype, type of protection, sprite)
/// @param zombietype
/// @param  type of protection
/// @param  sprite
function do_magnet(argument0, argument1, argument2) {
	var obj_check = argument0
	var door = argument1
	/*
	door = 0 Sin puerta
	door = 1 con puerta
	door = 2 objetos completos
	door = 3 sin puerta, no afecta a la vida total
	*/
	var sprite = argument2
	var obj = noone
	var near = 1
	var temp_obj = noone
	var objx = x
	var objy = y-40

	do{
	    temp_obj = instance_nth_nearest(x,y-30,obj_check, near)
    
	    if collision_circle(x,y,area,temp_obj,true,false){
	        if door!=2{
	            if temp_obj.soltarproteccion==false{
	                obj = temp_obj
	            }
	        }else{
	            obj = temp_obj
	        }
	    }
	    near++
	}until(obj!=noone or near>=instance_number(obj_check));

	var cont=false
        
	if (obj and state==0){
	    if door==0{
	        with(obj){
	            if soltarproteccion==false{
	                var rel = (zombispawn_obj.horde_ttl_hp/zombispawn_obj.horde_hp)
	                zombispawn_obj.horde_ttl_hp -= floor((vida-100)*rel)
	                zombispawn_obj.horde_hp -= vida-100         
	                soltarproteccion=true
	                maxhp=100
	                vida=100
                
	                objx = x
	                objy = y-90
                
	                cont=true
	            }
	        }
	    }else if door==2{
	        with(obj){
	            objx = x
	            objy = y-90
            
	            cont=true
            
	            instance_destroy();
	        }
	    }else if door==3{
	        with(obj){
	            if soltarproteccion==false{
	                soltarproteccion=true
	                objx = x
	                objy = y-90
                
	                cont=true
	            }
	        }
	    }else{
	        with(obj){
	            if soltarproteccion==false{
	                soltarproteccion=true
	                var rel = (zombispawn_obj.horde_ttl_hp/zombispawn_obj.horde_hp)
	                zombispawn_obj.horde_ttl_hp -= floor(puertavida*rel)
	                zombispawn_obj.horde_hp -= puertavida   
                
	                puertavida=0
                
	                objx = x
	                objy = y-90
                
	                cont=true
	            }
	        }
	    }
    
	    if cont==true{
	        audio_play_sound(magnet_snd,1,false)
	        image_index=0
	        state=1
	        sprite_shield = sprite
	        objxx=objx
	        objyy=objy
	    }
	}



}
