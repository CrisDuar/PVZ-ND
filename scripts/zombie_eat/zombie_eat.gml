/// @description zombie_eat(object, *x1, *x2, yy)
/// @param object
/// @param  *x1
/// @param  *x2
/// @param  yy
function zombie_eat() {
	var obj = argument[0]
	var x1=-10*image_xscale
	var x2=-50*image_xscale
	var yy=-15

	//x+28,y+54,x+19,y+54
	if argument_count>1 x1=argument[1]
	if argument_count>2 x2=argument[2]
	if argument_count>3 yy=argument[3]

	var _list = ds_list_create();
	var check = collision_rectangle_list(x+x1,y+yy-30,x+x2,y+yy+10,obj,false,true,_list,false)

	if check{
	    comiendo=true
	    var colobj = _list[| 0]
    
	    with(colobj){
    
	        var cancel_eat = false
        
	        if (sprite_index==setamiedica3_spr and other.water==false and other.object_index!=boss3_obj)
	        or (sprite_index==nenufar_spr and distance_to_object(typeplant_obj)<20 and distance_to_object(ghostpepper_obj)>=20)
	        or (object_index==ghostpepper_obj){
	            cancel_eat = true
	        }
        
	        ///HIPNO
	        /*if (object_get_parent(object_index) == eatfather_obj) or (object_get_parent(object_index) == eatfather_shield_obj){
	            if variable_instance_exists(id, "hipno"){
	                if (other.hipno == hipno) cancel_eat = true
	            }else{
	                cancel_eat = true
	            }
	        }else{
	            if (obj == eatfather_obj) cancel_eat = true
	        }*/
        
	        if (cancel_eat){
	            with(other){
	                comiendo=false
	                exit;
	            }
	        }
	    }
    
	    //hacer que las plantas escudo se dejen de mover
	    with(colobj){
	        switch(object_index){
	            case wallnut_obj:
	            case tallnut_obj:
	            case pumpkin_obj:
	                image_speed=0
	            break
            
	            case patatomine2_obj:
	            case icelettuce_obj:
	                event_perform(ev_collision,eatfather_obj)
	            break
            
	            case explodenut_obj:
	                if vida>=300{image_speed=0}else{image_speed=0.16}
	            break
	        }
	    }
    
	    //mordiscos
	    if object_index==boss3_obj{
	        if floor(image_index)==12 and bite=false{
	            bite=true
	            if colobj.object_index==plantern_obj vida-=200
            
	            with(colobj){
	                event_perform(ev_collision,z_statue_obj)
	            }
	        }
	    }else{
	        if ((image_index>0 and image_index<1) or (image_index>5 and image_index<6)) and bite=false{
	            bite=true
	            with(colobj){
	                vida -= other.eat_dmg
	                image_alpha=0.5
                
	                switch(object_index){
	                    case wallnut_obj:
	                    case explodenut_obj:
	                    case peanut_obj:
	                    case tallnut_obj:
	                    case pumpkin_obj:
	                        if (global.videoq > 1) {repeat(3){instance_create(x,y-32,nutparticle_obj)}}
	                    break
                    
	                    case plantorcha_obj:
	                        repeat(3){instance_create(x,y-32,nutparticle_obj)}
	                        if (onfire){
	                            other.vida-=5;
	                            other.image_alpha=0.5;
	                            audio_play_sound(choose(pea_impact_snd,pea_impact2_snd),1,false)
	                            if (global.videoq > 1) {part_particles_create(control_obj.part, other.x+random_range(-3,3), other.y-60+random_range(-3,3), control_obj.p4, 10)};
	                        }
	                    break
                    
	                    case electripear_obj:
	                        other.vida-=5
	                        other.image_alpha=0.5
	                        audio_play_sound(choose(junco1_snd,junco2_snd,junco3_snd),1,false)
	                        audio_play_sound(choose(pea_impact_snd,pea_impact2_snd),1,false)
	                        part_particles_create(control_obj.part, x, y, control_obj.p19, 4)
	                        if (global.videoq > 1) {repeat(2){part_particles_create(control_obj.part, other.x, other.y-irandom(60), control_obj.p19, 2)}}
	                    break
                    
	                    case garlic_obj:
	                        if other.timestop<room_speed{other.timestop=room_speed}
	                        audio_play_sound(choose(asco1_snd,asco2_snd),1,false)
	                        if other.y = zombispawn_obj.f6{
	                            other.garlic_yy = get_closest_row(other.y-90)
	                        }else if other.y = zombispawn_obj.f1{
	                            other.garlic_yy = get_closest_row(other.y+90)
	                        }else{
	                            other.garlic_yy = get_closest_row(other.y+choose(-90,90))
	                        }
	                    break
	                }
                
	                if vida<=0{
                
	                    if (object_index = setatoxica_obj){
	                        other.vida-=10
	                        if (other.gooptime<room_speed*12) other.gooptime=room_speed*12
	                        if (other.goopstun<room_speed*8) other.goopstun=room_speed*8
	                    }
                
	                    if variable_instance_exists(id, "in_danger"){
	                        if in_danger==true{
	                            with(other){
	                                gameover=true
	                                gameover_eat = true;
	                                caneat=false
	                                comiendo=true
	                            }
	                        }//eatfather_obj blover_obj
	                    }
	                    audio_play_sound(zombie_eatend_snd,1,false)
	                }
	            }
	            audio_play_sound(choose(zombiebite1_snd,zombiebite2_snd),0.5,false)   
	        }
	    }
	    if object_index==z_ghost_obj{
	        if ((image_index>=1 and image_index<=5) or image_index>=8) bite=false
	    }else{
	        if ((image_index>=1 and image_index<=5) or image_index>=10) bite=false
	    }
	}
	else
	{comiendo=false}



}
