/// @description zombie_create(obj,row,amount)
/// @param obj
/// @param row
/// @param amount
function zombie_create(argument0, argument1, argument2) {
	var obj=argument0
	var f=argument1
	var amount=argument2

	//f_list = ds_list_create(); //last row list?
	//ref_list = array(f1,f2,f3,f4,f5)

	for (var g=0; g<amount; g++){
    
	    if ref_list!=f{
    
	        ref_list=f
	        ds_list_clear(f_list)
	        //part_particles_create(control_obj.part, x-random_range(-10,12), y, control_obj.p1, 40);
	    }
    
	    if ds_list_size(f_list) <= 1{
    
	        ds_list_clear(f_list)
    
	        for (var i = 0; i < array_length_1d(f); i++){
	            ds_list_add(f_list, f[i])
	        }
	    }
    
	    var freal = ds_list_find_value(f_list, irandom_range(0, ds_list_size(f_list)-1));
    
	    //Método última línea
	    if lf != freal{
	        lf = freal
	    }else{
	        if array_length_1d(f)>1{
	            var avoid = 0
	            var full = false
            
	            //Método buscar la línea menos poblada :D
	            while (lf==freal){
	                avoid++
	                //Look for an empty lane
	                var f_list_copy = ds_list_create();
                
	                for (var i = 0; i<array_length_1d(f); i++){
	                    ds_list_add(f_list_copy,f[i])
	                }
                
	                for (var i = 0; i<ds_list_size(f_list_copy)-1; i++){
	                    freal = ds_list_find_value(f_list_copy, irandom_range(0, ds_list_size(f_list_copy)-1));
	                    var pos = ds_list_find_index(f_list_copy, freal)
                    
	                    //var temp_list = collision_line_list(0,freal,room_width,freal,eatfather_obj,false,false)
						var temp_list = ds_list_create();
						collision_line_list(0,freal,room_width,freal,eatfather_obj,false,false, temp_list, true)
	                    var size = 0
	                    if temp_list!=noone{
	                        size = ds_list_size(temp_list)
	                    }
                    
	                    if size<=floor(instance_number(eatfather_obj)/(array_length_1d(f)+2)){
	                        full=true
	                        //part_particles_create(control_obj.part, x-random_range(-10,12), y, control_obj.p1, 40);//
	                        break;
	                    }
	                    ds_list_delete(f_list_copy,pos)
	                }
                
                
	                //all lanes are full lol
	                if full = false{
	                    freal=ds_list_find_value(f_list, irandom_range(0,ds_list_size(f_list)-1));
	                    var pos = ds_list_find_index(f_list, freal)
	                    var prob = irandom(100)
                    
	                    /*if prob<3{
	                        freal = f[irandom_range(0, array_length_1d(f)-1)];
	                        ds_list_clear(f_list)
	                        part_particles_create(control_obj.part, x-random_range(-10,12), y, control_obj.p11, 40);
	                        break;
	                    }*/
                    
	                    if lf!=freal or avoid>50{
	                        //part_particles_create(control_obj.part, x-random_range(-10,12), y, control_obj.p11, 40);
	                        if prob>=5 {ds_list_delete(f_list, pos)}
	                        break;
	                    }
	                }
	            }
	        }
	    }
    
	    switch(obj){
	        default:
	            //var xx = 1180+irandom(120)+irandom_range(60,80)*g
	            /*off_xx += irandom_range(20,40)
	            if off_xx>280 then off_xx = 0
            
	            var xx = 1180 + off_xx*/
				var temp_list = ds_list_create();
	            collision_line_list(1165,freal,room_width,freal,eatfather_obj,false,false, temp_list, true)
	            size = 0
            
	            if temp_list!=noone{
	                size = (ds_list_size(temp_list)+1)*irandom_range(30,60)+irandom_range(40,80)*g
	            }
        
            
	            var xx = 1165 + irandom(96) + size
            
	            if obj==z_statue_obj then xx=1180
	            with(instance_create(xx,freal,obj)){
	                horde_id=other.h
	            }
	        break
        
	        case beachball_obj:
	        case cajaspawn_obj:
	            instance_create(1200,freal,obj)
	        break
        
	        case z_flag_obj:
	        case z_rally_obj:
	            with(instance_create(1150,freal,obj)){
	                horde_id=other.h
	            }
	        break
	    }
	}

	zombie_horde_health();



}
