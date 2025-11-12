audio_play_sound(choose(pea_impact_snd,pea_impact2_snd),0.5,false)
with(instance_create(x,y,crushedplant_obj)){
    sprite_index=other.sprite_index
    image_index=other.image_index
    image_blend=c_black
}
instance_destroy();

