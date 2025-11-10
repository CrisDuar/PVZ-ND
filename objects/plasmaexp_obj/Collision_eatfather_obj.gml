if ds_list_find_index(hit_zom,other.id)==-1{
    ds_list_add(hit_zom,other.id)
    
    with(other){
        if control_obj.invisible==false image_alpha=0.5
        vida -= 50
    }
}



