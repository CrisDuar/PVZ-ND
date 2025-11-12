audio_play_sound(vase_snd,1,false)
instance_create(x+10,y-50,destroygrave_obj)

if loottype=0{
    with(instance_create(x,get_closest_row(y),loot)){
        image_alpha=0
        if object_index = z_jackinthebox_obj{
            t=random(10)
        }else if object_index = z_statue_obj{
            spawnzombie=1
            localkami=true
            warn=true
            warn_rush=true
            hspeed=-10
        }else if object_index = z_protesterleader_obj{
            alarm[0]=1
        }
    }
}

if loottype=1{
    with(instance_create(x,y-10,loot)){
        image_xscale=0.7
        image_yscale=0.7
        type=2
    }
}

if loottype=2{
    instance_create(x,y-60,loot)
}

instance_destroy();

