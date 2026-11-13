if vida<=0{
    plant_eaten()
    
    if (control_obj.gameplay_modifier[5]){
        var _gravetype = choose(grave2_obj, grave7_obj);
        
        if distance_to_object(gravedetect_obj)>0
        and distance_to_object(caja_obj)>0
        and distance_to_object(crater1_obj)>0 {
        
            with(instance_create(instance_nearest(x,y,pastoinv_obj).x - 10, get_closest_row(y), animgrave_obj)){
                gravetype = _gravetype
            }
            
        }
    }
    
    if (control_obj.gameplay_modifier[7]){
        
        with(typeplant2_obj){
            
            if (id == other.id) continue;
            
            var _tile = instance_nearest(x,y,pastoinv_obj);
            var _other_tile = instance_nearest(other.x,other.y,pastoinv_obj);
            var _xtile, _ytile, _other_xtile, _other_ytile;
            
            _xtile = _tile.column;
            _ytile = _tile.row;
            
            _other_xtile = _other_tile.column;
            _other_ytile = _other_tile.row;
            
                
            if (abs(_xtile - _other_xtile) <= 1 && abs(_ytile - _other_ytile) <= 1){
                
                event_perform(ev_collision, animgrave_obj);
            }
        }
    }
    
    instance_destroy(obj_danger)
    instance_destroy();
}

