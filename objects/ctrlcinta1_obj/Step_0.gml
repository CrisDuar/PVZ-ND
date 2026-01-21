if (!init){
	
	var _odds = 0;
	
	for (var i = 0; i < array_length(p_packets); i++){
		
		_odds += p_packets[i][2];
	}
	p_odds = _odds
	
	_odds = 0;
	
	for (var i = 0; i < array_length(z_packets); i++){
		
		_odds += z_packets[i][2];
	}
	z_odds = _odds
	
	init = true;
}


if (!global.nivelterminado and global.iniciogame and !global.gameover){
    if timer>0{
        timer--;
    }else{
        timer=60*random_range(t1,t2)
        
		prob_card(p_packets, false, p_odds, limit_num);
		prob_card(z_packets, true, z_odds, limit_num);
    }

    if img<6 img+=0.5 else img=0
}

if control_obj.multijugador==true{
    if instance_exists(menuplants_obj){
        with(menuplants_obj){
            multno=collision_rectangle_list(248,y+1,-200,0,menuplants_obj,false,false,ds_list_create(),false)
        }
    }
    
    if instance_exists(menuzombi_obj){
        with(menuzombi_obj){
            multno=collision_rectangle_list(1500,y+1,0,0,menuzombi_obj,false,false,ds_list_create(),false)
        }
    }
}

