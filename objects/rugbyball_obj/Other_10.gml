audio_play_sound(pea_impact_snd,1,false)
with(drop(x,y,rugbyball_spr,image_index,false,image_blend,get_closest_row(y3+40),depth)){
    image_angle=other.image_angle
}

if instance_exists(obj){
    with(obj){
        if object_index==patatomine2_obj and in_danger==false{
            event_perform(ev_other,ev_user0)
        }

        if (in_danger==false) or (in_danger==true and vida > 30){
            vida-=30
            image_alpha=0.5; 
        }
    }
}
instance_destroy();

