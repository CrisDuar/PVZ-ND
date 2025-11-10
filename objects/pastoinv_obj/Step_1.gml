var _cntplnt = canplant

if place_meeting(x,y,menuparent_obj){
    with(menuparent_obj){
        if collision_rectangle(other.bbox_left,other.bbox_top,other.bbox_right,other.bbox_bottom, self, true, false){
            if !point_in_rectangle(mouse_x,mouse_y,bbox_left,bbox_top,bbox_right,bbox_bottom){
                _cntplnt = true
            }
        }else{
            _cntplnt = true
        }
    }
}else{
    canplant = true
}


if _cntplnt canplant=true

