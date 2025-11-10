/// @description zombie_preview(zombie1_obj, amount)
/// @param zombie1_obj
/// @param  amount
function zombie_preview(argument0, argument1) {
	for (i=0; i<argument1; i++){
	    var yy = irandom_range(160,630)
	    var xx = irandom_range(1168,1328+yy/3.7)+irandom(32)
	    var inst = instance_create(xx,yy,argument0)
	    var spr=0
	    var es=0
	    var en=0
	    if instance_exists(inst){
	        spr=inst.waitsprite
	        es=inst.name_esp
	        en=inst.name_eng
	        with(inst){
	            instance_change(zombieprev_obj,true)
	            sprite_index=spr
	            hspeed=0
	            vspeed=0
	            speed=0
	            name_esp=es
	            name_eng=en
	            x = xx
	            y = yy
	            depth = -y-10
	        }
	    }
	}




}
