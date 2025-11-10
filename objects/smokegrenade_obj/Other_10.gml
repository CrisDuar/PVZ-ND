audio_play_sound(smokegrenade_snd,1,false)

with(instance_create(x,y+30,smokecloud_obj)){
    obj = instance_create(x,y-30,popdrop_obj)
    with(obj){
        hspeed=choose(-0.5,0.1,0.5)
        image_angle=other.image_angle
        sprite_index=granadahumo_spr
        dis_time=60*60
        point=y+30
    }
}

instance_destroy();

