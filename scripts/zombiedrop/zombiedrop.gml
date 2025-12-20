/// @description zombiedrop(if drops money (boolean))
/// @param if drops money (boolean
function zombiedrop() {
	var money = true
	var generador=0
	var sunchance=random(100)
	if(argument_count > 0) {money = argument[0]}

	if instance_exists(zombispawn_obj){
	    zombispawn_obj.xx=x
	    zombispawn_obj.yy=y
	}

	if (money){
	    if control_obj.multijugador=false and global.nivelterminado=false and room!=izombie_rm{
	        generador=random(200)
        
	        if (instance_exists(zs_endless_obj)) generador *= 0.65;
        
	        if (generador <= 0.1 and string(string_delete(room_get_name(room),10, 6)) == "levelhard"){//Ruby
	            instance_create(x,y,ruby_obj)
	        }else if (generador <= 0.4){//Diamond
	            instance_create(x,y,diamond_obj)
	        }else if (generador <= 4){//Cash
	            instance_create(x,y,billete_obj)
	        }else if (generador <= 10){//Golden coin
	            instance_create(x,y,goldencoin_obj)
	        }else if (generador <= 40){//Silver coin
	            instance_create(x,y,silvercoin_obj)
	        }
	    }
	}

	if room==nivel24_rm{
	    if sunchance<=5{
	    with(instance_create(x,y-50,sol_flower_obj))
	        {costo=choose(15,25) ; scale=0.7 ; hspeed=-1}
	        with(instance_create(x-40,y-105,sol_flower_obj))
	        {costo=choose(15,25) ; scale=1 ; hspeed=-1}
	    }
	}

	if room==levelhard1_5_rm{
	    if sunchance<=20{
	    with(instance_create(x,y-50,sol_flower_obj))
	        {costo=choose(15,25,50) ; scale=0.7 ; hspeed=-1}
	        with(instance_create(x-40,y-105,sol_flower_obj))
	        {costo=choose(15,25,50) ; scale=1 ; hspeed=-1}
	    }
	}
}
