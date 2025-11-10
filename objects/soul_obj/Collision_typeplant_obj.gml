with(instance_create(x,y+yy,globalbroke_obj)){
    sprite_index=soulbroke_spr
    image_xscale=-1
}
instance_create(x+yy,y-20,graveeffect1_obj)
audio_play_sound(choose(pea_impact_snd,pea_impact2_snd),1,false)
instance_destroy();

