if ds_list_find_index(hit_zom,other.id)==-1{
    ds_list_add(hit_zom,other.id)
    
    with(other){
        if control_obj.invisible==false image_alpha=0.5
        
        if (puertavida>0){
            puertavida -= 50
        }else{
            vida -= 50
        }
    }
}



