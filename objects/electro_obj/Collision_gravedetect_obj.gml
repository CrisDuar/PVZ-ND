if ds_list_find_index(hit_zom,other.id)==-1{
    ds_list_add(hit_zom,other.id)
    
    with(other){
        vida-=25
        image_alpha=0.5
        repeat(2){part_particles_create(control_obj.part, x, y-irandom(60), control_obj.p19, 2)}
    }
}

