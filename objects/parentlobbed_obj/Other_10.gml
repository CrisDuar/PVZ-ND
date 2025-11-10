if particle!=-1{
    if (global.videoq > 0){
        repeat(4){
            with(instance_create(x,y,peaparticle_obj)){sprite_index=other.particle}
        }
    }
}

var _angle = point_direction(x,y,x3,y3*1.5)

if broke!=-1{
    with(instance_create(x,y,globalbroke_obj)){
        sprite_index = other.broke
        image_angle = _angle
    }
}

if instance_exists(obj){
    if object_get_parent(obj.object_index) == eatfather_obj or object_get_parent(obj.object_index) == eatfather_shield_obj{
        with(obj){
            if soltarproteccion=false audio_play_sound(choose(hurtsnd,hurt2snd),1,false);
            vida -= other.damage
            if control_obj.invisible==false image_alpha=0.5
        }
    }else{
        with(obj){
            vida -= other.damage
            image_alpha=0.5;
        }
    }
}
audio_play_sound(choose(snd1,snd2),1,false)
instance_destroy();

