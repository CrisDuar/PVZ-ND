/// @description junco_attack(dmg)
/// @param dmg
function junco_attack(argument0) {
	var _dmg = argument0

	//FIRST ATTACK
	if instance_exists(parentattack_obj){
	    firstcurrent=1
	    init_x=x
	    init_y=y
    
	    do{
	        obj=collision_rectangle(255, get_closest_row(y-90)-5,1115,get_closest_row(y+90)+5,instance_nth_nearest(x,y,parentattack_obj,firstcurrent),false,false)
        
	        firstcurrent++
	        if (firstcurrent > instance_number(parentattack_obj) + 1) {exit}
        
	        if (obj!=noone){
	            if (obj.mask_index==nocol_spr or obj.mask_index==ghostnohit_spr) obj = noone;
	        }
	    }until(obj!=noone)
    
	    if obj!=noone{
	        objx=obj.x
	        objy=obj.y
        
	        if obj.mask_index=nocol_spr
	        or obj.mask_index==ghostnohit_spr
	        or obj.sprite_index==zombiepolejump1_spr
	        or obj.sprite_index==zombiepolejump2_spr{
	            exit;
	        }
        
	        electric_dmg(obj, _dmg)
        
	        //with(instance_create(objx,objy-90,damage_obj)){
	        //        value="-"+string(other.dmg)+" HP!!!"
	        //}
    
	        with(instance_create(x,y,rayo_obj)){
	            objx=other.objx
	            objy=other.objy
	            init_x=other.x
	            init_y=other.y
	        }
	        image_yscale=1.5
	        a=1
	        image_index=0
	        audio_play_sound(choose(junco1_snd,junco2_snd,junco3_snd),1,false)
	        audio_play_sound(choose(pea_impact_snd,pea_impact2_snd),1,false)
	    }
	}

	//DAÑO SECUNDARIO
	with(obj){
	    zombie_electro(_dmg);
	}



}
