/// @description zombie_electro(damage)
/// @param damage
function zombie_electro(argument0) {

	var current = 0
	var limit = instance_number(parentattack_obj)-1
	var obj1
	var obj2
	var dmg = argument0
	var obj1x
	var obj1y
	var obj2x
	var obj2y
	var dis
    
	    while(current<=limit){
	        if instance_exists(parentattack_obj) and clamp(dmg-(current*2)-2,0,dmg-2)>0{
	            obj1= instance_nth_nearest(x,y,parentattack_obj,1+current)
	            obj2= instance_nth_nearest(x,y,parentattack_obj,2+current)
            
	            if obj1==obj2
	            or obj2.mask_index=nocol_spr
	            or obj2.mask_index==ghostnohit_spr
	            or obj2.sprite_index==zombiepolejump1_spr
	            or obj2.sprite_index==zombiepolejump2_spr{
	                exit;
	            }
            
	            var obj1x=instance_nth_nearest(x,y,parentattack_obj,1+current).x
	            var obj1y=instance_nth_nearest(x,y,parentattack_obj,1+current).y
	            var obj2x=instance_nth_nearest(x,y,parentattack_obj,2+current).x
	            var obj2y=instance_nth_nearest(x,y,parentattack_obj,2+current).y
	            var dis=point_distance(obj1x,obj1y,obj2x,obj2y)
	            //var dis=point_distance(instance_nth_nearest(x,y,eatfather_obj,1+current).x,instance_nth_nearest(x,y,eatfather_obj,1+current).y,
	            //obj2x=instance_nth_nearest(x,y,eatfather_obj,2+current).x,obj2y=instance_nth_nearest(x,y,eatfather_obj,2+current).y)
            
	            if dis<=170 and obj2x<1110{
            
	                electric_dmg(obj2, clamp(dmg-(current*2)-2,1,dmg-2))
                
	                with(instance_create(x,y,rayo_obj)){
	                    objx=obj2x
	                    objy=obj2y
	                    xx=obj1x
	                    yy=obj1y
	                }
	            }else{
	                exit;
	            }
	        }
	        current++
	    }



}
