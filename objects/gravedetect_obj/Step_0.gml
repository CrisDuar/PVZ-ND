depth=-y+60

if global.gameover=true{
    image_speed=0
}

if image_alpha<1{
    image_alpha+=0.05
}

if (useDegradeSprites){
    
    if (vida > maxVida * (2/3)){
        image_index = 0;
    }else if (vida > maxVida * (1/3)){
        image_index = 1;
    } else{
        image_index = 2;
    }
}

if (room == izombie_rm) canspawn = false;

if (canspawn){
    if (instance_exists(finalwave_obj)){
        spawnTime = spawnTimeMax;
        spawned = true;
    }
    
    if (spawned && !global.nivelterminado){
        if (spawnTime > 0){
            
            spawnTime--;
            
        }else{
            
            spawnTime = spawnTimeMax;
            spawned = false;
    
            with(instance_create(x,get_closest_row(y),zombiegrave_obj)){
                water=other.water
                obj=other.zominventory[irandom_range(0,array_length(other.zominventory)-1)]
            }
        }
    }
}





if vida <=0 and object_index!=signclaire_obj{
    audio_play_sound(choose(piedraded_snd,piedraded2_snd),1,false)
    instance_create(x+10,y-50,destroygrave_obj)
    instance_destroy();
}

//WATER

if (collision_rectangle(305,284,1055,423,self,false,false)
and __background_get( e__BG.Index, 0 )=poolday_bg)
or (place_meeting(x,y,charco_obj)){
    if water=false{
        image_alpha=0
        audio_sound_pitch(audio_play_sound(aguazom_snd,1,false),random_range(0.85,1.15))
        with(instance_create(x+10,y-15,tierra1_obj)){sprite_index=agua1_spr}
        with(instance_create(x+10,y-15,tierra3_obj)){sprite_index=agua3_spr; image_alpha=1}
        instance_create(x+10,y-15,aguaex_obj)
        water=true 
    }
}
else{
    if water=true{
        with(instance_create(x+10,y-15,tierra3_obj)){sprite_index=agua3_spr; image_alpha=1}
        instance_create(x+10,y-15,aguaex_obj)
        audio_sound_pitch(audio_play_sound(aguazom_snd,1,false),random_range(0.85,1.15))
        image_alpha=0
        water=false
    }
}

