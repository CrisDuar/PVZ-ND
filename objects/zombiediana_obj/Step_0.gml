event_inherited();
//Stuff
hspeed=0
timecongelado=0
timestop=0
congelado=true
image_speed=0.16


if vida>100{sprite_index=zombiediana1_spr}
else{sprite_index=zombiediana2_spr}

//MORIR
if vida <= 0 and global.dianas<3 
and global.gameover=false and global.nivelterminado=false{
    global.dianas+=1
    
    _depth = depth-1
    
    if global.dianas>=3{
        if control_obj.multijugador=true or room==iplant_rm{
        
            instance_create(x-35,y-40,plantswin2p_obj)
            
        }else if room==nivel14_rm{
            with(instance_create(x-35,y-50,newprize_obj)){
                sprite_index=nota_spr;
                plantroom=nota_rm;
                lvl=15
                prizevar="niveles";
                snd=newplant_snd
                money=200
            }
        }else if room == izombie_rm{
            _depth=-10000
        }
    }
    
    drop(x-40, y-30+30*water, diana_spr, 0, true, image_blend, y, _depth)
    drop(x-25, y-92+30*water, zombiehead_spr, 0, false, image_blend, y, _depth)
    drop(x, y-30+30*water, brazo_spr, 5, false, image_blend, y, _depth)
    drop(x-27, y-105+30*water, gorra2_spr, 0, false, image_blend, y, _depth)
   /* with(instance_create(x-40,y-30+30*water,popdrop_obj)){
            audio_play_sound(pophead_snd,1,false);
            w=other.water
            sprite_index=diana_spr;
            image_blend=other.image_blend
            point=other.y
            depth=other.depth-10
            if global.dianas>=3 depth=-10000
        }

    with(instance_create(x-25,y-92+30*water,popdrop_obj)){
        audio_play_sound(pophead_snd,1,false);
        w=other.water
        image_blend=other.image_blend;
        image_index=0
        point=other.y
        depth=other.depth-10
        if global.dianas>=3 depth=-10000
    }*/
    with(instance_create(x,y,zombieded_obj)){
        water=other.water
        image_blend=other.image_blend;
        sprite_index=dianaded_spr
        depth=other.depth
        if global.dianas>=3 depth=-10000
    }
    /*
    with(instance_create(x,y-30+30*water,popdrop_obj)){
        audio_play_sound(pophead_snd,1,false);
        w=other.water
        sprite_index=brazo_spr;
        image_blend=other.image_blend;
        image_index=5
        point=other.y
        depth=other.depth-10
        if global.dianas>=3 depth=-10000
    }
    
    with(instance_create(x-27,y-105+30*water,popdrop_obj)){
        audio_play_sound(pophead_snd,1,false);
        w=other.water
        sprite_index=gorra2_spr
        image_blend=other.image_blend
        depth=other.depth-10
        point=other.y;
        if global.dianas>=3 depth=-10000
    }
        */
        
    instance_destroy();
}

/* */
/*  */
