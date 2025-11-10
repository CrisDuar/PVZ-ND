/// @description survival_load(file_name)
/// @param file_name
function survival_load(argument0) {
	var file = argument0
	var spawner = 0
	var back = 0
	var n0,n1,inst,xx,yy;
	var var1=0;
	var var2=0;
	var var3=0;
	var var4=0;
	var var5=0;

	if spawner==zombiespawnsurv2_obj{
	    back=1
	}



	if file_exists(file){

	    ini_open(file)
    
	    if (ini_section_exists("Zombies")) loaded_zom = true
	    //game values
	    zs_endless_obj.version = ini_read_real("Game", "version", 0 );
	    zombispawn_obj.record = ini_read_real("Spawn", "record", 0 );
	    zombispawn_obj.survprogress = ini_read_real("Spawn", "current_progress", 0 );
	    //survcontrol_obj.current_progress = ini_read_real("Spawn", "current_progress", 0 );
    
	    if (zombispawn_obj.survprogress>0){
    
	        zombispawn_obj.dificultad = ini_read_real("Spawn", "dificultad", 0 );
	        zombispawn_obj.survtimecalc = ini_read_real("Spawn", "survtimecalc", 0 );
        
	        //retos
	        for(var i = 0; i < array_height_2d(challenges); i++){
	            if ini_key_exists("Gimmicks", "challenges" + string(i)){
	                challenges[i,0] = ini_read_real("Gimmicks","challenges" + string(i), 0)
	                show_debug_message("reto No. " + string(i) + " es " + string(challenges[i,0]))
	            }
	        }
        
	        zombispawn_obj.p1 = asset_get_index(ini_read_string("Gimmicks", "p1", 0))
	        zombispawn_obj.p2 = asset_get_index(ini_read_string("Gimmicks", "p2", 0))
        
	        //Zombies survival_save
	        var _z = 0
        
	        while (ini_key_exists("Zombies","zom_" + string(_z))){
            
	            var _z_obj = ini_read_string("Zombies","zom_" + string(_z), "_")
            
	            if (_z_obj != "_"){
	                ds_list_add(zombie_list, get_zombie_data(asset_get_index(_z_obj)))
	            }
            
	            _z++
	        }
	    }
    
	//load graves anims
	    if version == global.survival_ver{
	        n0=0;n1=0;
	        inst=0;
	        xx=0;yy=0;
	        var1=0;var2=0;var3=0;
	        while ini_key_exists("AnimGraves",string(n0)+string(n1)){
	        inst=ini_read_string("AnimGraves", string(n0)+string(n1), 0);
	            n1+=1;
	        xx=ini_read_real("AnimGraves", string(n0)+string(n1), 0);
	            n1+=1;
	        yy=ini_read_real("AnimGraves", string(n0)+string(n1), 0);
	            n1+=1;
	        var1=ini_read_real("AnimGraves", string(n0)+string(n1), 0);//image_index
	            n1+=1;
	        var2=ini_read_real("AnimGraves", string(n0)+string(n1), 0);//sprite_index
	            n1+=1;
	        var3=ini_read_real("AnimGraves", string(n0)+string(n1), 0);//gravetype
	            with(instance_create(xx,yy,asset_get_index(inst))){
		            image_index=var1
		            sprite_index=var2
		            gravetype=var3
	            }
	        n0+=1;
	        n1=0;
	        }
        
	        //load graves shields
	        n0=0;n1=0;
	        inst=0;xx=0;yy=0;
	        var1=0;var2=0;var3=0;
	        while ini_key_exists("Graves",string(n0)+string(n1)){
	        inst=ini_read_string("Graves", string(n0)+string(n1), 0);
	            n1+=1;
	        xx=ini_read_real("Graves", string(n0)+string(n1), 0 );
	            n1+=1;
	        yy=ini_read_real("Graves", string(n0)+string(n1), 0 );
	            n1+=1;
	        var1=ini_read_real("Graves", string(n0)+string(n1), 0 );//vida
	            with(instance_create(xx,yy,asset_get_index(inst))){
	                vida=var1
	            }
	        n0+=1;
	        n1=0;
	        }
        
	        //load deleted lawnmowers anims
	        n0=0;n1=0;
	        inst=0;
	        xx=0;yy=0;
	        while ini_key_exists("Lawnmowers",string(n0)+string(n1)){
	        inst=ini_read_string("Lawnmowers", string(n0)+string(n1), 0);
	            n1+=1;
	        xx=ini_read_real("Lawnmowers", string(n0)+string(n1), 0 );
	            n1+=1;
	        yy=ini_read_real("Lawnmowers", string(n0)+string(n1), 0 );
	            instance_create(xx,yy,asset_get_index(inst))
	        n0+=1;
	        n1=0;
	        }
        
	        //load lawnmowers anims
	        n0=0;n1=0;
	        inst=0;
	        xx=0;yy=0;var1=0;
	        while ini_key_exists("Lawnmowers2",string(n0)+string(n1)){
	        inst=ini_read_string("Lawnmowers2", string(n0)+string(n1), 0);
	            n1+=1;
	        xx=ini_read_real("Lawnmowers2", string(n0)+string(n1), 0 );
	            n1+=1;
	        yy=ini_read_real("Lawnmowers2", string(n0)+string(n1), 0 );
	            n1+=1;
	        var1=ini_read_real("Lawnmowers2", string(n0)+string(n1), 0 );
	            with(instance_create(xx,yy,asset_get_index(inst))){
	            activada=var1
	            if x=226{
	            instance_destroy();
	            }
	            }
	        n0+=1;
	        n1=0;
	        } 
        
	    }else{
	        version = global.survival_ver
	    }
	    ini_close();
	}



}
