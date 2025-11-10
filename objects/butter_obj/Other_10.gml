if instance_exists(obj){
    if object_get_parent(obj.object_index) == eatfather_obj or object_get_parent(obj.object_index) == eatfather_shield_obj{
        with(obj){
            if (timestop<room_speed*5) timestop=room_speed*5;
        }
    }
}

event_inherited();

