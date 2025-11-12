if other.object_index!=z_balloon_obj and ds_list_find_index(hit_zom,other.id)==-1{
    ds_list_add(hit_zom,other.id)
    
    with(other){
        event_perform(ev_collision,bulbatck2_obj)
    }
    switch(direction){
        case 0:
            direction=choose(45, 330)
        break
                
        case 330:
            direction=45
        break
                
        case 45:
            direction=330
        break
    }
}

