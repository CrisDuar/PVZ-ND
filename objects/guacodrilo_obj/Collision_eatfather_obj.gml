if (a)
and other.object_index!=zombieglobo_obj
and other.object_index!=zombiediana_obj
and ds_list_find_index(hit_zom,other.id)==-1{
    
    audio_play_sound(choose(pea_impact_snd,pea_impact2_snd),1,false)
    other.vida-=150
    if control_obj.invisible==false other.image_alpha=0.5
    other.image_alpha=0.5
    
    ds_list_add(hit_zom,other.id)
}

