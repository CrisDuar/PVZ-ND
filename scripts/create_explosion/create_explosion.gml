/// @description create_explosion(x,y,type,xsize,ysize,sfx, shake [optional], damage [optional], explodonator [optional])
/// @param x
/// @param y
/// @param type
/// @param xsize
/// @param ysize
/// @param sfx
/// @param  shake [optional]
/// @param  damage [optional]
/// @param  explodonator [optional]
function create_explosion() {
	xx=argument[0]
	yy=argument[1]
	type=argument[2]
	xsize=argument[3]
	ysize=argument[4]
	sfx=argument[5]
	shake=15
	var dmg = 70
	var logro = false
	if(argument_count > 6) {shake = argument[6]}
	if(argument_count > 7) {dmg = argument[7]}
	if(argument_count > 8) {logro = argument[8]}


	if global.gameover=false{
	    if sfx!=-1 audio_play_sound(sfx,1,false)
	    control_obj.shake = shake
    
	    switch(type){
	        default: //Just zombies and graves
	            if (logro) logros_obj.explodonator = 0;
        
	            with(eatfather_obj){
	                if mask_index==nocol_spr mask_index=sprite_index
	                if collision_rectangle(other.xx-(83*(other.xsize/2)),other.yy-(88*(other.ysize/2)),other.xx+(83*(other.xsize/2)),other.yy+(88*(other.ysize/2)),self,true,false){
	                    event_perform(ev_collision,globalexplosions_obj)
                    
	                    //LOGRO
	                    if (logro) logros_obj.explodonator++
	                }
	            }
            
	            with(gravedetect_obj){
	                if collision_rectangle(other.xx-(83*(other.xsize/2)),other.yy-(88*(other.ysize/2)),other.xx+(83*(other.xsize/2)),other.yy+(88*(other.ysize/2)),self,true,false){
	                    event_perform(ev_collision,globalexplosions_obj)
	                }
	            }
	        break
        
	        case 1://just plants and vases
	            with(typeplant2_obj){
	                if collision_rectangle(other.xx-(83*(other.xsize/2)),other.yy-(88*(other.ysize/2)),other.xx+(83*(other.xsize/2)),other.yy+(88*(other.ysize/2)),self,true,false){
	                    event_perform(ev_collision,globalexplosions_obj)
	                }
	            }
            
	            with(vase_obj){
	                if collision_rectangle(other.xx-(83*(other.xsize/2)),other.yy-(88*(other.ysize/2)),other.xx+(83*(other.xsize/2)),other.yy+(88*(other.ysize/2)),self,true,false){
	                    event_user(0)
	                }
	            }
	        break
        
	        case 2://plants and zombies
	            with(eatfather_obj){
	                if mask_index==nocol_spr mask_index=sprite_index
	                if collision_rectangle(other.xx-(83*(other.xsize/2)),other.yy-(88*(other.ysize/2)),other.xx+(83*(other.xsize/2)),other.yy+(88*(other.ysize/2)),self,true,false){
                    
	                    if (room==nivel26_rm) instance_create(x,y-50,choose(silvercoin_obj,goldencoin_obj))
                
	                    event_perform(ev_collision,globalexplosions_obj)
	                }
	            }
    
	            with(typeplant2_obj){
	                if collision_rectangle(other.xx-(83*(other.xsize/2)),other.yy-(88*(other.ysize/2)),other.xx+(83*(other.xsize/2)),other.yy+(88*(other.ysize/2)),self,true,false){
	                    event_perform(ev_collision,globalexplosions_obj)
	                }
	            }
            
	            with(gravedetect_obj){
	                if collision_rectangle(other.xx-(83*(other.xsize/2)),other.yy-(88*(other.ysize/2)),other.xx+(83*(other.xsize/2)),other.yy+(88*(other.ysize/2)),self,true,false){
	                    event_perform(ev_collision,globalexplosions_obj)
	                }
	            }
	        break
        
	        case 3: //Poison zombies and hurt graves
	            with(eatfather_obj){
	                if mask_index==nocol_spr mask_index=sprite_index
	                if collision_rectangle(other.xx-(83*(other.xsize/2)),other.yy-(88*(other.ysize/2)),other.xx+(83*(other.xsize/2)),other.yy+(88*(other.ysize/2)),self,true,false){
	                    vida-=10
	                    if gooptime<60*12{gooptime=60*12}
	                    if (goopstun<60*8) goopstun=60*8
	                }
	            }
            
	            with(gravedetect_obj){
	                if collision_rectangle(other.xx-(83*(other.xsize/2)),other.yy-(88*(other.ysize/2)),other.xx+(83*(other.xsize/2)),other.yy+(88*(other.ysize/2)),self,true,false){
	                    vida-=10
	                }
	            }
	        break
        
        
	        case 4: //Just zombies and graves (weak - torchwood)
	            with(eatfather_obj){
	                if mask_index==nocol_spr mask_index=sprite_index
	                if collision_rectangle(other.xx-(83*(other.xsize/2)),other.yy-(88*(other.ysize/2)),other.xx+(83*(other.xsize/2)),other.yy+(88*(other.ysize/2)),self,true,false){
	                    if variable_instance_exists(id, "puertavida"){
	                        if puertavida>0 {
	                            puertavida-=dmg
	                            if control_obj.invisible==false image_alpha=0.5
	                        }
	                    }
	                    if vida>dmg{vida-=dmg; image_alpha=0.5}else{event_perform(ev_collision,globalexplosions_obj)}
	                }
	            }
            
	            with(gravedetect_obj){
	                if collision_rectangle(other.xx-(83*(other.xsize/2)),other.yy-(88*(other.ysize/2)),other.xx+(83*(other.xsize/2)),other.yy+(88*(other.ysize/2)),self,true,false){
	                    vida-=dmg
	                    image_alpha=0.5
	                }
	            }
	        break
        
	        case 5: //Poison plants
	            with(typeplant2_obj){
	                if collision_rectangle(other.xx-(83*(other.xsize/2)),other.yy-(88*(other.ysize/2)),other.xx+(83*(other.xsize/2)),other.yy+(88*(other.ysize/2)),self,true,false){
	                    event_perform(ev_collision,poisontile_obj)
	                }
	            }
	        break
        
	        case 6: //Burn plants
	            with(typeplant2_obj){
	                if collision_rectangle(other.xx-(83*(other.xsize/2)),other.yy-(88*(other.ysize/2)),other.xx+(83*(other.xsize/2)),other.yy+(88*(other.ysize/2)),self,true,false){
	                    event_perform(ev_collision,molotov_col_obj)
	                }
	            }
	        break
        
	        case 7: //Poison zombies and hurt graves with config dmg and less time (deadly nightshade)
	            with(eatfather_obj){
	                if mask_index==nocol_spr mask_index=sprite_index
                
	                if collision_rectangle(other.xx-(83*(other.xsize/2)),other.yy-(88*(other.ysize/2)),other.xx+(83*(other.xsize/2)),other.yy+(88*(other.ysize/2)),self,true,false)
	                and object_index!=zombiediana_obj{
	                    vida-=dmg
	                    if gooptime<room_speed*1.5{gooptime=room_speed*1.5}
	                }
	            }
            
	            with(gravedetect_obj){
	                if collision_rectangle(other.xx-(83*(other.xsize/2)),other.yy-(88*(other.ysize/2)),other.xx+(83*(other.xsize/2)),other.yy+(88*(other.ysize/2)),self,true,false){
	                    vida-=dmg
	                }
	            }
	        break
        
	        case 8: //Just zombies and graves (area damage by lobbed plants)
	            with(eatfather_obj){
	                if (mask_index==nocol_spr) mask_index=sprite_index
                
	                if collision_rectangle(other.xx-(83*(other.xsize/2)),other.yy-(88*(other.ysize/2)),other.xx+(83*(other.xsize/2)),other.yy+(88*(other.ysize/2)),self,true,false){
	                    vida-=dmg;
	                    if control_obj.invisible==false image_alpha=0.5
	                }
	            }
            
	            with(gravedetect_obj){
	                if collision_rectangle(other.xx-(83*(other.xsize/2)),other.yy-(88*(other.ysize/2)),other.xx+(83*(other.xsize/2)),other.yy+(88*(other.ysize/2)),self,true,false){
	                    vida-=dmg
	                    image_alpha=0.5
	                }
	            }
	        break
	    }
	}



}
