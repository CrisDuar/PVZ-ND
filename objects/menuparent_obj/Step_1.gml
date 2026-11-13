if place_meeting(x,y,pastoinv_obj){
    with(pastoinv_obj){
        if collision_rectangle(other.bbox_left,other.bbox_top,other.bbox_right,other.bbox_bottom, self, true, false){
            if point_in_rectangle(mouse_x,mouse_y,other.bbox_left,other.bbox_top,other.bbox_right,other.bbox_bottom){
                canplant=false
            }
        }
    }
}

if (control_obj.multijugador){
	
	if (vs_set == false){
		
		vs_set = true;
		cost = vs_cost;
		recargstart = vs_recargstart;
		timer = vs_recharge;
	}
}

if (control_obj.gameplay_modifier[12]){
    
    if (!gm_set){
        
        gm_set = true;
        
        cost += (cost/2) + (cost/2 % 5);
        if (cost == 0) cost = 15;
		timer /= 2;
    }
}