/// @description pera_attack()
function pera_attack() {
	var _init_x, _init_y, _obj, _objx, _objy, _a

	//FIRST ATTACK
	if instance_exists(parentattack_obj){
	    _init_x=x
	    _init_y=y
	    _obj = instance_nearest(random(1115),random(700),parentattack_obj)
    
	    if _obj!=noone{
	        _objx = _obj.x
	        _objy = _obj.y
        
	        if _obj.mask_index=nocol_spr
	        or _obj.mask_index==ghostnohit_spr
	        or _obj.sprite_index==zombiepolejump1_spr
	        or _obj.sprite_index==zombiepolejump1_spr
	        or _obj.x>1115{
	            exit;
	        }
        
	        electric_dmg(_obj, 25)
    
	        with(instance_create(x,y,rayo_obj)){
	            objx = _objx
	            objy = _objy
	            init_x = other.x
	            init_y = other.y
	        }
	        image_yscale=1.5
	        _a=1
	        image_index=0
        
	        //DAÑO SECUNDARIO
	        with(_obj){
	            zombie_electro(10);
	        }
	    }
	}



}
