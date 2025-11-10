audio_play_sound(pea_impact_snd,1,false)

with(instance_create(x,y,beachballdrop_obj)){
    angle=other.image_angle
    point=get_closest_row(other.y3+33)-33
    depth=other.depth-10
}

if instance_exists(obj){
    with(obj){
        image_alpha=0.5
        vida-=20
        
        if object_index==patatomine2_obj and in_danger==false{
            event_perform(ev_other,ev_user0)
        }
    }
}

instance_destroy();

