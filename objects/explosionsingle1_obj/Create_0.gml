audio_play_sound(explocherry_snd,1,false)
instance_create(x,y+20,humodel_obj)
instance_create(x,y+20,humoatras_obj)
with(instance_create(x,y-30,powie_obj))
{sprite_index=minipowie_spr}
with(instance_create(x,y,manchaexplo_obj))
{maxnumx=1.3 maxnumy=0.8}
instance_create(x,y,hotstone_obj)
instance_create(x,y,hotstone_obj)
instance_create(x,y,hotstone_obj)
image_speed=0.5
image_alpha=0
alarm[0]=1

