if p1>0
and mouse_x>=230
and global.gameover=false
and global.iniciogame=true{
    if sprite_index=gw_headidle_spr{
        image_index=0
        sprite_index=gw_headshoot_spr
        tallo=gw_talloshoot_spr
        helmet=gw_helmetshoot_spr
    }
    if image_index<=0.4{
        p1--
        audio_sound_pitch(audio_play_sound(gwshoot2_snd,1,false),random_range(0.8,1.5))
        with(instance_create(x+random_range(-5,5),y-40+random_range(-5,5),gwpea_obj)){
        direction=other.direction+random_range(-5,5)
        }
        if p1<=0{
            image_alpha=0
            instance_create(x,y-15,destroygrave_obj)
            with(instance_create(x,y-20,popdrop_obj)){
                audio_play_sound(pophead_snd,1,false);
                sprite_index=gw_helmetidle_spr
                point=other.y+15
                depth=other.depth-10
            }
        }
    }
}

