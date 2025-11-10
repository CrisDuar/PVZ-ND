with(instance_create(x,y+yy,globalbroke_obj)){
    sprite_index=soulbroke2_spr
    image_xscale=-1
}
with(instance_create(x,y+yy,graveeffect1_obj)){sprite_index=zom3_spr}
audio_play_sound(choose(pea_impact_snd,pea_impact2_snd),1,false)
instance_destroy();

