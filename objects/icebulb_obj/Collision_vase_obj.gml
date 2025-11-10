if other.object_index!=zombieglobo_obj 
and ds_list_find_index(hit_zom,other.id)==-1
and image_alpha>=0.9{
    part_particles_create(control_obj.part, x, y, control_obj.p20, 40);
    audio_play_sound(bulbocongela_snd,0.8,false)
    ds_list_add(hit_zom,other.id)
    image_alpha=0.35
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
    with(other){
        event_user(0)
    }
    with(eatfather_obj){
        if collision_rectangle(other.x-110,other.y-140,other.x+110,other.y+100,self,false,false){
            if timecongelado<room_speed*8{timecongelado=room_speed*8}
            image_blend=c_frost
        }
    }
    
    instance_create(x,y-30,destroygrave_obj)
    with(instance_create(x,y,luzcafe_obj)){sprite_index=luzicelettuce_spr}
}

