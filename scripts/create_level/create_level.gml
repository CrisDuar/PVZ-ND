/// @description create_level(grace time, n waves, n flags, hard flag?, zombies data [ds_list], rows [array], difficulty)
/// @param grace time
/// @param  n waves
/// @param  n flags
/// @param  hard flag?
/// @param  zombies data [ds_list]
/// @param  rows [array]
/// @param  difficulty
function create_level() {
	pt=argument[0]//Grace time
	fn=argument[1]//number of waves
	var hn = argument[2] //number of flags
	var am_flags = 0
	f=0

	var skip_zom = 0
	var con_flag = 0;
	var new_flag;

	if hn = 0{
	    new_flag = 1
	}else{
	    new_flag = floor(fn/(hn+1))
	}

	wf=array_create(fn)

	var flag_type;

	if argument[3]{
	    flag_type = z_rally_obj;
	}else{
	    flag_type = z_flag_obj
	}

	var data = argument[4]
	var a = argument[5]//rows

	var zombies = get_zombies(data);
	zombies = sort_zombie_list(zombies)

	for(var i = 0; i < ds_list_size(zombies); i++){
	    zombie_preview(zombies[| i], clamp(2-i,1,2))
    
	    show_debug_message(string(object_get_name(zombies[| i]) + " " + string(get_zombie_points(zombies[| i]))))
	}

	//CREAR EL ARRAY
	var dif = argument[6]
	var real_points = 1

	for(var i = 0; i < fn; i++){
	    var points = 0;
	    var is_flag = false;
	    real_points += dif/5
    
    
	    if (i >= fn-1){
	        //final wave
	        points = i + 5 + dif*2 -1
	        is_flag = true
	    }

	    if con_flag>=new_flag{
	        if am_flags<hn{
	            //common flag
	            con_flag=0;
	            am_flags++;
	            //points += min(i+10,30);
	            points = i + dif*2 -1
	            is_flag = true
	        }
	    }
    
	    /*if con_flag<new_flag{
	        if (i < fn-1){
	            //NORMAL FLAG
	            real_points += points_mod
	        }else{
	            //final wave
	            //points += min(i+20,40);
	            points = i + (dif-1)*2
	            is_flag = true
	        }
	    }else{
	        if am_flags<hn{
	            //common flag
	            con_flag=0;
	            am_flags++;
	            //points += min(i+10,30);
	            points = i + (dif-1)*2
	            is_flag = true
	        }else{
	            points += i + 1;
	        }
	    }*/
    
	    if is_flag=false points = floor(real_points)
    
	    //crear el array
	    var pos = 0;
	    show_debug_message("points: " + string(points))
    
	    var omision = 0;
    
	    if (!is_flag) omision = clamp(floor(i*dif/5), 0 , 2)
    
	    for(var j = 0; j < ds_list_size(zombies); j++){
        
	        //show_debug_message(j)
	        var og_p = points
        
	        var odds = irandom(100)
	        //var og_cost = j*2.25
	        var og_cost = get_zombie_points(zombies[| j])
	       // var cost = max(1, og_cost)//*clamp(i/fn,1,3)
	        var cost = og_cost
	        var amount = 0;
        
	        var max_amount = irandom_range(floor(1+(dif/15)),floor(3 +(dif/10)))
	        if i <= 0 max_amount = 1
        
	        var zombie_odds;
        
	        if (og_cost >= omision){
	            if (con_flag<new_flag or j = 0){
	                zombie_odds = 100
	            }else{
	                zombie_odds = get_zombie_odds(zombies[| j])
	            }
	        }else{
	            zombie_odds = 60;
	        }
        
	        while(amount < max_amount and cost<=points and odds<=zombie_odds){
	            points -= cost
	            //cost += og_cost/8
	            amount++;
	            odds = irandom(100)
	        }
        
	        if amount>0{
	            show_debug_message("f["+ string(i) + ", " +string(pos)+ "] "+object_get_name(zombies[| j]) + " " + string(amount)+ " cost: "+ string(og_p-points))
            
	            var rows = a;
            
	            if (surv_type==1){
                
	                if (i < 3 or zombies[| j] == z_zomboni_obj or zombies[| j] == z_solarpanel_obj) and (zombies[| j] != z_snorkel_obj){
                
	                    rows = g
                    
	                }else if (zombies[| j] == z_snorkel_obj){
                    
	                    rows = w
                    
	                }else{
	                    rows = a
	                }
	            }else{
	                rows = a
	            }
            
	            f[i,pos] = array(zombies[| j], rows, amount)///clamp(floor((3*i*(ds_list_size(zombies)-j))/fn),1,3)
	            pos++
            
	        }
        
	        if (pos > 0 and i <= 0) break;
	    }
    
	    //contador real
	    /*var j;
            
	    if is_flag{
	        j = 0
	    }else{
	        j = ds_list_size(zombies)-1
	    }

	    for(var k = 0; k < ds_list_size(zombies); k++){
        
	        //show_debug_message(j)
	        var og_p = points
        
	        var odds = irandom(100)
	        //var og_cost = j*2.25
	        var og_cost = get_zombie_points(zombies[| j], data)
	       // var cost = max(1, og_cost)//*clamp(i/fn,1,3)
	        var cost = og_cost
	        var amount = 0;
	        while(amount<3 and cost<=points and odds<=get_zombie_odds(zombies[| j], data)){
	            points -= cost
	            cost += og_cost/8
	            amount++;
	        }
        
	        if amount>0{
	            show_debug_message("f["+ string(i) + ", " +string(pos)+ "] "+object_get_name(zombies[| j]) + " " + string(amount)+ " cost: "+ string(og_p-points))
	            f[i,pos] = array(zombies[| j], a, amount)///clamp(floor((3*i*(ds_list_size(zombies)-j))/fn),1,3)
	            pos++
            
	        }
        
	        if is_flag{
	            j++
	        }else{
	            j--
	        }
	    }
	    */
    
	    if (is_flag){
	        wf[i] = 1
	        f[i,pos] = array(flag_type,a, 1)
	        show_debug_message("f["+ string(i) + ", " +string(pos)+ "] "+object_get_name(flag_type))
	    }
    
	    show_debug_message("after points: " + string(points))
	    if hn>0 con_flag++;
	}

	wf[fn-1]=2




}
