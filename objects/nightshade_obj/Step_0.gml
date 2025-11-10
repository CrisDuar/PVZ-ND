event_inherited();

if sprite_index=imgshot{
    if (floor(image_index)==1 and disparando==0) or (floor(image_index)==4 and disparando==1){
        if disparando==0{//AL PRIMERO
            var zom = collision_line_first(x, y-10, maxdistance, y, parentattack_obj, false, false)
        }else{//AL ÚLTIMO
            if control_obj.multijugador==false and room!=iplant_rm and room!=nivel14_rm{
                var zom = collision_line_first(maxdistance, y-10, x, y, parentattack_obj, false, false)
            }else{
                var temp_list = ds_list_create()
                var zom;
                var target = collision_line(x, y-10, maxdistance, y, zombiediana_obj, false, false)
                
                collision_rectangle_list(maxdistance, y-10, x, y, parentattack_obj,  false, false, temp_list, 0)
                
                var am = ds_list_size(temp_list)
                
                ds_list_destroy(temp_list)
                
                if target!=noone{
                    with(target){
                        if am - 1 <= 0{
                            zom = id
                        }else{
                            zom = collision_line_first(other.maxdistance, other.y-10, other.x, other.y, parentattack_obj, false, true)
                        }
                    }
                }else{
                    zom = collision_line_first(maxdistance, y-10, x, y, parentattack_obj, false, false)
                }
                
                
            }
        }
        var n = 2
        
        audio_sound_pitch(audio_play_sound(nightshade_snd,1,false),random_range(0.8,1.2))
        with(instance_create(x+25,y-40,devilcherry_obj)){
            obj = zom
        }
        disparando++
    }
    
    if image_index>=image_number-1{
        cadencia=0.14
        sprite_index=imgidle
        image_index=0
        image_speed=0.16
        disparando=0
    }
}


