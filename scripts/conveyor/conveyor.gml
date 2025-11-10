/// @description conveyor(zombie/bool, seedpacket/id, prob_top/int, prob_bottom/int)
/// @param zombie/bool
/// @param  seedpacket/id
/// @param  prob_top/int
/// @param  prob_bottom/int
function conveyor(argument0, argument1, argument2, argument3) {
	var type_seed = argument0
	var seed = argument1
	var probtop = argument2
	var probbot = argument3
	var prob = g
	var obj_seed = noone
	var xx
	var am

	if spawn==false{
	    if type_seed==false{
	        //plants (type==false)
	        xx = irandom_range(-150,-98)
	        am = conveyor_number(menuplants_obj)//instance_number(menuplants_obj)
	    }else{
	        //zombies (type==true)
	        xx = irandom_range(1350,1400)
	        am = conveyor_number(menuzombi_obj)//instance_number(menuzombi_obj)
	    }
    
	    if prob<probtop and prob>=probbot and am<8{
	        if instance_number(seed)<limit_num{
	            with(instance_create_layer(xx, 510, "GUI", seed)){type=1}
	            spawn=true
	        }else{
	            g = probbot-1
	        }
	    }
	}
/* end conveyor */
}
