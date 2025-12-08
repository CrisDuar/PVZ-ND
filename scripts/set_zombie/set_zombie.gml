/// @description set_zombie(type)
/// @param type
function set_zombie() {

	if instance_exists(trazo_obj){
	    if x>trazo_obj.x{
	        with(menuzombi_obj){
	            if select=control_obj.zomseleccionado and localselect!=0{
	                audio_play_sound(choose(other.snd1,other.snd2),1,false)
	                switch(control_obj.zomseleccionado - 1){
                
	                    default://Zombi normal
	                        with(instance_create_layer(other.x+xx,get_closest_row(other.y+yy-other.offset),"Instances",zombiegrave_obj)){
	                            obj=other.zombie
	                        }
	                    break
                    
	                    case zombies_id.OBST_ZOMGRAVE://Zomgrave
	                        with(instance_create_layer(other.x+xx,get_closest_row(other.y+yy-other.offset),"Instances",animgrave_obj)){gravetype=zomgrave_obj}
	                    break
                    
	                    case zombies_id.ZOMBIE_STATUE://Estatua
	                    //Rows
	                        with(instance_create_layer(other.x+xx+random_range(-30,-15),get_closest_row(other.y+yy-other.offset),"Instances",zombiegrave_obj)){
	                            obj=other.zombie
	                        }
	                    break
                    
	                    case zombies_id.ZOMBIE_FLAG://FLAG
	                    instance_create(x,y,hugeofzombies_obj)
	                    with(instance_create_layer(1180,get_closest_row(other.y+yy-other.offset), "Instances",zombiegrave_obj)){
	                        obj=other.zombie
	                    }
	                    var z_yy_list = ds_list_create();
	                    var z_yy = 0
	                    if __background_get( e__BG.Index, 0 )==poolday_bg{
	                        ds_list_add(z_yy_list, 152, 236, 339, 422, 527, 615)
	                    }else{
	                        ds_list_add(z_yy_list, 166, 267, 370, 472, 578)
	                    }
                    
                    
	                    for(var i=0; i<7; i++){
	                        var z_yy_temp = 0
                        
	                        do{
	                            z_yy_temp =ds_list_find_value(z_yy_list, irandom_range(0, ds_list_size(z_yy_list)-1))
	                        }until(z_yy_temp != z_yy)
                        
	                        z_yy=z_yy_temp
	                        var z_unit = z_zombie_obj
                        
	                        if i>5{
	                            z_unit = z_buckethead_obj
	                        }else if i>3{
	                            z_unit = z_conehead_obj
	                        }
                        
	                        if __background_get( e__BG.Index, 0 )==poolday_bg{
	                            z_yy = choose(152, 236, 339, 422, 527, 615)
	                        }
                        
	                        with(instance_create_layer(1180+random_range(80,160),z_yy,"Instances",zombiegrave_obj)){
	                            obj=z_unit
	                        }
	                    }
	                    break
                    
	                    case 19:
	                    with(instance_create(other.x+xx,get_closest_row(other.y+yy-other.offset),animgrave_obj)){gravetype=soulgrave_obj}
	                    break
	                    //DESDE EL PRINCIPIO
                    
	                    case 25://globo
	                    case 26://zomboni
	                    //case 31://cajita
	                    case 33://fantasma
	                    with(instance_create(1180,get_closest_row(other.y+yy-other.offset),zombie)){image_alpha=0}
	                    break
                    
	                    case 29://bolas de playa
	                    repeat(4){instance_create(1180,choose(166,267,370,472,578),zombie)}
	                    break
                    
                    
                    
	                    case 37://lightning
	                        instance_create(other.x+xx,get_closest_row(other.y+yy-other.offset),rayo_vs_obj)
	                    break
	                }
                
	                if type==0{
	                    control_obj.zomseleccionado=0
	                    control_obj.zomes -= cost
                    
	                    t_rechar=timer*60
	                    localselect=0
	                }else{
	                    instance_destroy()
	                }
	            }
	        }
	    }else{
	        with(menuzombi_obj){
	            if select=control_obj.zomseleccionado and localselect!=0{
	                audio_play_sound(choose(other.snd1,other.snd2),1,false)
                
	                switch(control_obj.zomseleccionado){
	                    case 35://zombiemolotov_obj
	                        var _xtile = other.x
	                        var _ytile = other.y+25
                    
	                        with(instance_create(1180,get_closest_row(other.y+yy-other.offset),zombie)){
	                            image_alpha=0
	                            vstile_x = _xtile
	                            vstile_y = _ytile
	                        }
	                    break
	                }
                
	                if type==0{
	                    control_obj.zomseleccionado=0
	                    control_obj.zomes -= cost
                    
	                    t_rechar=timer*60
	                    localselect=0
	                }else{
	                    instance_destroy()
	                }
	            }
	        }
	    }
	}



}
