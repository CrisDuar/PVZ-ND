/// @description zombie_horde_health()
function zombie_horde_health() {
	var horde_hp_temp = 0

	with(eatfather_obj){
	    if horde_id==other.h{
	        horde_hp_temp+=vida
	        horde_hp_temp+=puertavida
	    }
	}

	horde_ttl_hp=horde_hp_temp
	horde_hp=horde_hp_temp




}
