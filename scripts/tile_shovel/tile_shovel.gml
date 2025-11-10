/// @description tile_shovel()
function tile_shovel() {
	control_obj.pala=false
	audio_play_sound(cancelseedpack_snd,1,false)
	audio_play_sound(choose(plantado1_snd,plantado2_snd),1,false)

	var obj;

	obj = collision_line_first(x-4,y-49+sprite_height,x+4,y-49*image_yscale,typeplant2_obj,false,false)

	if obj{
    
	    //Si es un nenufar, comprobar que no tenga nada encima
	    if obj.object_index == nenufar_obj{
	        with(obj){
	            if distance_to_object(typeplant_obj) <= 10 or distance_to_object(pumpkin_obj) <= 10{
	                obj = collision_line_first(other.x-4,other.y-49+other.sprite_height,other.x+4,other.y-49*other.image_yscale,typeplant2_obj,false,true)
	            }
	        }
	    }

	    //Si es una planta en peligro, buscar dronajos o calabazas
	    if obj.in_danger==true{
	        obj=collision_line_first(x-4,y-49+sprite_height,x+4,y-49*image_yscale,garlicdrone_obj,false,false)
	        if (!obj) obj = collision_line_first(x-4,y-49+sprite_height,x+4,y-49*image_yscale,pumpkin_obj,false,false)
	    }
    
	    with(obj){
	        if shovel{
	            logros_obj.healthy_garden = false;
	            if instance_exists(menusol_obj) plant_return_sun();
	            instance_destroy();
	        }
	    }
	}



}
