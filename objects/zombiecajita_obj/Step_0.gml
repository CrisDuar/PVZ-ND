event_inherited();
//zombie_eat()
if vida>30{
    if explo==false{
        if comiendo=false{
            if soltarproteccion=false{sprite_index=zombicajita1_spr}else{sprite_index=zombicajita3_spr}
        }else{
            if soltarproteccion=false{sprite_index=zombicajitaeat1_spr}else{sprite_index=zombicajitaeat3_spr}
        }
    }else{
        sprite_index=zombicajitaexp1_spr
    }
}else{
    if explo==false{
        if comiendo=false{
            if soltarproteccion=false{sprite_index=zombicajita2_spr}else{sprite_index=zombicajita4_spr}
        }else{
            if soltarproteccion=false{sprite_index=zombicajitaeat2_spr}else{sprite_index=zombicajitaeat4_spr}
        }
    }else{
        sprite_index=zombicajitaexp2_spr
    }
}

if (global.gameover=false){
    if sound==false and !audio_is_playing(musicbox_snd){
        sound=true
        s = audio_play_sound(musicbox_snd,1,true)
    }
}

if soltarproteccion{
    audio_stop_sound(s)
}else if (vida<=0 or global.nivelterminado=true){
    soltarproteccion=true
    audio_stop_sound(s)
    with(instance_create(x-25,y-40+30*water,popdrop_obj)){
        w=other.water
        image_blend=other.image_blend;
        point=other.y;
        sprite_index=musicbox_spr;
        depth=other.depth-10
    }
}

//TIMER

if global.gameover==false{
    if t>0{
        if (control_obj.multijugador==true or room==izombie_rm){
            if soltarproteccion==false and stop==false and comiendo==true and check_zombie_eat(brain_obj)==false{t--}
        }else{
            if x<=1080 and soltarproteccion==false and stop==false{t--}
        }
    }else{
        if explo=false{
            audio_stop_sound(s)
            audio_play_sound(choose(surprise1_snd,surprise2_snd),0,false)
            caneat=false
            walkspeed=0
            imagespeed2=0.16
            explo=true
            image_index=0
        }
    }
    
    if explo=true and image_index>=10{  
        part_particles_create(control_obj.part, x-random_range(-10,12), y-40, control_obj.p1, 40);
        create_explosion(x,y,1,3,2.6,machineexplosion_obj)
        event_perform(ev_collision,globalexplosions_obj)
    }
}

