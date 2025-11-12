if ds_list_find_index(hit_zom,other.id)==-1{

    ds_list_add(hit_zom,other.id)
    part_particles_create(control_obj.part, x, y-40, control_obj.p20, 4);
    
    var is_shield = false
    
    with(other){
        //CONGELAMIENTO
        audio_sound_pitch(audio_play_sound(icebreak_snd,1,false),random_range(0.8,1.2))
        
        if isdoor==true{
            if puertavida>0 and other.x<x{
                puertavida -= other.dmg_zom
                is_shield = true
            }
        }
        
        if (object_index==z_statue_obj or object_index == trashcan_obj) is_shield = true
        
        if (is_shield == false){
            if (frozenstop<room_speed*other.stun_zom) frozenstop=room_speed*other.stun_zom
            if (congelado=false and canfreeze=true) audio_play_sound(zombifrost_snd,1,false)
            if (timecongelado<room_speed*room_speed*other.froze_zom) timecongelado=room_speed*other.froze_zom
            image_blend=c_frost
            
            if (object_index==beachballdrop_obj) vida -= 500 else vida -= other.dmg_zom
        }else{
            
            if (puertavida>0){
                puertavida -= other.dmg_zom/2
            }else{
                vida -= other.dmg_zom
            }
        }
        
        if (soltarproteccion==false) audio_play_sound(choose(hurtsnd,hurt2snd),1,false);
        if control_obj.invisible==false image_alpha=0.5
    }
    
    if ds_list_size(hit_zom)>=4 or is_shield{
        event_inherited();
    }
}

