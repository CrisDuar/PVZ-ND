/// @description conveyor(zombie/bool, seedpacket/id, prob_top/int, prob_bottom/int)
/// @param zombie/bool
/// @param  seedpacket/id
/// @param  costume/int
/// @param  prob/int
/// @param  prob_top/int
/// @param  prob_bottom/int
/// @param  limit/int
function conveyor(type_seed, seed, costume, _prob, probtop, probbot, _limit) {
	
	//xx is the x position where the seepacket will spawn, and "am" is the amount of conveyor seedpacket
	var xx, am;
	
	if (type_seed==false){
	    //plants (type==false)
	    xx = irandom_range(-150,-98)
	    am = conveyor_number(menuplants_obj)
	}else{
	    //zombies (type==true)
	    xx = irandom_range(1350,1400)
	    am = conveyor_number(menuzombi_obj)
	}
    
	if (_prob < probtop and _prob >= probbot and am < 8){
			
	    if (packets_number(type_seed, seed) < _limit){
				
			var _packet = create_packet_ingame(xx, 510, type_seed, seed, costume);
			
			with(_packet){
				type = 1;
			}
			
			return true;	
	    }
	}
	
	return false;
}
