var proceed=true
with(obj){
    //can't proceed if it is an endangered plant
    if object_index=typeplant_obj{
        if in_danger==true proceed=false
    }
}

if (proceed == true and global.gameover == false){
    if instance_exists(obj){
        //if obj is a zombie, turn it into a magician
        if type==0{
            part_particles_create(control_obj.part, x, y, control_obj.p18, 60)
            audio_sound_pitch(audio_play_sound(poof_snd,1,false),random_range(0.8,1.2))
            instance_create(x,get_closest_row(y)-60,destroygrave_obj)
            
            var _hrd_id = obj.horde_id
            var _hp = (obj.vida / obj.maxhp) * 200
            
            var _mago_maxhp = 200
            
            with(instance_create(x,get_closest_row(y),z_magician_obj)){
                atackcall = 300
                horde_id = _hrd_id;
                vida = _hp
                
                _mago_maxhp = maxhp
            }  
            //var _rel = (zombispawn_obj.horde_ttl_hp/zombispawn_obj.horde_hp)

            zombispawn_obj.horde_ttl_hp += _mago_maxhp  - obj.maxhp;
            zombispawn_obj.horde_hp += _hp - obj.vida;   
            
            instance_destroy(obj);
        }else{
            if obj.x>=460{//if plant is on column 2 or superior create an imp
                if obj.in_danger==false{
                    audio_sound_pitch(audio_play_sound(poof_snd,1,false),random_range(0.8,1.2))
                    part_particles_create(control_obj.part, x, y, control_obj.p18, 60)
                    var xx = random(20)
                    instance_create(x+xx,get_closest_row(y)-60,destroygrave_obj)
                    
                    with(instance_create(x+xx,get_closest_row(y),z_imp_obj)){
                        image_alpha=0
                        //walkspeed=-0.25
                        //imagespeed2=0.25//walk
                    }
                }
            }else{//else, just decrease the HP if it's not an endangered plant
                audio_sound_pitch(audio_play_sound(poof_snd,1,false),random_range(0.8,1.2))
                audio_sound_pitch(audio_play_sound(pea_impact_snd,1,false),random_range(0.8,1.2))
                part_particles_create(control_obj.part, x, y, control_obj.p18, 60)
                with(obj){
                    image_alpha=0.5
                    if in_danger==false{
                        vida-=30
                    }else{
                        if vida>30 vida-=30;
                    }
                }
            }
        }
    }
}

instance_destroy();

