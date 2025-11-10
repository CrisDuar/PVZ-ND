/// @description draw_unit(type)
/// @param type
function draw_unit(argument0) {
	var type=argument0

	switch(type){
	    case 0:
	        with(menuplants_obj){
	            if localselect=select draw_sprite_ext(sprite,0,other.x+xx,other.y+yy-other.offset,xmod,1,0,c_white,0.5)
	        }
	    break;
    
	    case 1:
	        with(menuzombi_obj){
	            if localselect=select{
	                draw_sprite_ext(sprite,0,other.x+xx,get_closest_row(other.y+yy-other.offset),xmod,1,0,c_white,0.5)
                
	                if select==35 draw_sprite_ext(molotovidle1_spr,0,1050,get_closest_row(other.y+yy-other.offset),1,1,0,c_white,0.5)
	            }
	        }
	    break
	}







}
