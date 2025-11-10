//GAME OVER
if global.gameover=false{
    if x<=240{
        if control_obj.multijugador=false and room!=izombie_rm{
            audio_stop_all();
            game_over();
            
            gameover=true
            garlic_yy=zombispawn_obj.f3
            
        }else{
            audio_stop_all();
            audio_play_sound(prize_snd,1,false)
            instance_create(655,335,zombiswin2p_obj)
            global.nivelterminado=true
            global.zombieswin=true
        }
    }
}else{
    if x<=140 and dogameover==false{

        timeline_index = game_over_tml
        timeline_position = 0;
        timeline_running = true
        
        dogameover=true
    }
    
    if (x <= 0){
        walkspeed = 0;
        x = 0;
    }
}

//el game over
if gameover=false{//el resto
    depth=-y-dpth;
}else{
//causante del game over
    depth=-99999
    
    congelado = 0
    frozenstop = 0
    timecongelado = 0
    gooptime = 0
    stop = false
    timestop = 0
}

if control_obj.invisible==false{
    if image_alpha<1 image_alpha+=0.05
}else{
    if gameover=false{
        image_alpha=0
    }else{
        if image_alpha<1 image_alpha+=0.05
    }
}

if canwater=true{
    if (point_in_rectangle(x,y,290,300,1075,427) and __background_get( e__BG.Index, 0 )=poolday_bg)
    or (collision_rectangle(x-40*water,y-10,x,y+30,charco_obj,false,false) and object_index!=zomboni_obj){
        if water=false{
            water=true
        }
    }else{
        if water=true{
            water=false
        }
    }
}

if canwateranim==true{
    if water==true{
        if y_wtr==29 and canwater{create_dirt(1); audio_sound_pitch(audio_play_sound(aguazom_snd,1,false),random_range(0.85,1.15))}
        if y_wtr<30 {y_wtr++}
    }else{
        if y_wtr==29 and canwater{create_dirt(1); audio_sound_pitch(audio_play_sound(aguazom_snd,1,false),random_range(0.85,1.15))}
        if y_wtr>0 {y_wtr--}
    }
}


//transformar si Vs
if global.nivelterminado=true 
and instance_exists(zombiediana_obj)
and object_index!=zombiediana_obj
and global.zombieswin=true{
    with(instance_create(x,y-90,solmove_obj)){
        obj=menuzom_obj
        spr=zom_spr
        sprite_index=zom2_spr
        w=64
    }
    audio_sound_pitch(audio_play_sound(sol_snd,1,false),control_obj.sunpitch)
    control_obj.sunpitch+=0.25
    control_obj.zomes+=25
    zombiedrop(false);
    instance_destroy();
}

//viento
if global.gameover=false
and control_obj.wind==true
and !check_zombie_eat(tallnut_obj){
    if object_index==zombieglobo_obj{
        x -= 0.15
    }else{
        x -= clamp(0.5-(peso/10),0,10)
    }
    if object_index=beachballdrop_obj{angle += clamp(0.5-(peso/10),0,10)}
}

//motivación
if (instance_exists(zabanderadohard_obj) or room==nivel11_rm) and object_index!=zabanderadohard_obj and object_index!=zombiestatua_obj{
    motivated=true
}else{
    motivated=false
}

//velocidad
if canspeed=true{
    if (global.gameover==false or gameover==true) and stop=false{
        if comiendo=true{
            image_speed= imagespeed1 - (imagespeed1*0.5*congelado) + (motivated*0.5*imagespeed1) + (electro*0.25*imagespeed1)
            hspeed=0
        }else{
            image_speed= imagespeed2 - (imagespeed2*0.5*congelado) + (motivated*0.5*imagespeed2) + (electro*0.25*imagespeed2)
            hspeed=walkspeed - (walkspeed*0.5*congelado) + (motivated*0.25*walkspeed) + (electro*0.25*walkspeed)
        }
    }
}

//AJO
if stop==false{
    if y!=garlic_yy{
        jumpwater=0
        comiendo=false
        
        if global.gameover=false x+=walkspeed
    }
    repeat(2){
        if y<garlic_yy y+=abs(sign(walkspeed));
        if y>garlic_yy y-=abs(sign(walkspeed));
    }
}

//Se asegura de que no se quede congelado ni quieto
if timestop>0{timestop--; stop=true}else{timestop=0}

//CONGELARSE
if canfreeze=true{
    if timecongelado>0{
        timecongelado--; 
        congelado=true
    }
    
    if frozenstop>0{
        frozenstop--
        congelado=true
    }
    
    if frozenstop<=0 and timecongelado<=0{
        congelado=false
    }
    
    if congelado==true{
        image_blend=c_frost
    }else{
        image_blend=c_white
    }
    
    if dropice=true and frozenstop=false{
        dropice=false
        repeat(3){with(instance_create(x+random_range(-5,5),y+random_range(-5,5),peaparticle_obj)){sprite_index=choose(snpeaparticle_spr,snpeaparticle2_spr,snpeaparticle3_spr)}}
    }
}else{
    frozenstop=0
    timecongelado=0
    congelado=false
}

//Gooping
if gooptime>0{
    if (canpoison){
        gooptime--
        goopstun--
        
        //DAMAGE BY POISON
        
        if (goopdmg>0){
            goopdmg -= 1 + random(0.25)
        }else{
            goopdmg=30
            part_particles_create(control_obj.part, x+random_range(-3,3), y-20+random_range(-3,3), control_obj.p5, 3);
            vida-=5;
            if control_obj.invisible==false image_alpha=0.5;
            audio_play_sound(choose(pea_impact_snd,pea_impact2_snd),1,false)
        }
        
    }else{
        gooptime=0
        goopstun=0
    }

}else{
    gooptime=0
    goopstun=0
    goopdmg = 30
}

//QUEDARSE QUIETO
if stop=true or (global.gameover=true and gameover=false){
    hspeed=0; 
    image_speed=0
}

if (goopstun<=0 and timestop<=0 and frozenstop<=0){
    stop=false
}else{
    stop=true
}

//Dying

if (!gameover){
    //Morpho spawning
    if (morpho_a){
        
        if (morpho_t > 0){
        
            morpho_t--;
            if (vida <= 0) create_upgraded_puffshroom();
        }
    }
    
    if (tradie){
        if vida <= 0 or global.nivelterminado=true{
            drop(x-25, y-92+30*water, zombiehead_spr, headspr, true, image_blend, y, depth-10)
            with(instance_create(x,y,zombieded_obj)){
                water=other.water
                image_blend=other.image_blend;
                sprite_index=other.bodyspr
                depth=other.depth-10
            }
            zombiedrop(money);
            instance_destroy();
        }
    }
}

//SOLTAR EL BRAZO

if vida>30 soltarbrazo=false

if canhand=true{
    if (vida<=30 or global.nivelterminado=true) and soltarbrazo==false{
        soltarbrazo=true
        drop(x, y-30+30*water, brazo_spr, handspr, true, image_blend, y, depth-10)
    }
}

///REMOVE THE HIPNO THING IN THE RELEASE

if caneat=true and y==garlic_yy and stop==false and hipno == false{
    if check_zombie_eat(garlicdrone_obj) and eatgarlic=true and water=false{zombie_eat(garlicdrone_obj)}
    else if check_zombie_eat(pumpkin_obj){zombie_eat(pumpkin_obj)}
    else if check_zombie_eat(brain_obj){zombie_eat(brain_obj)}
    else if check_zombie_eat(sunmachine_obj){zombie_eat(sunmachine_obj)}
    else if check_zombie_eat(gravebuster_obj){zombie_eat(gravebuster_obj)}
    else if check_zombie_eat(typeplant_obj){zombie_eat(typeplant_obj)}
    else if check_zombie_eat(nenufar_obj){zombie_eat(nenufar_obj)}
    ///HIPNOOO
    //else if check_zombie_eat(eatfather_obj){zombie_eat(eatfather_obj)}
    else {comiendo=false}
}

if (gameover_eat) comiendo = true;

if vida>maxhp vida=maxhp

electroimg+=electro*0.16
if electroimg>5 electroimg=0

/*///HIPNO EXPERIMENT


if caneat=true and y==garlic_yy and stop==false{
    if hipno == true{
        if check_zombie_eat(eatfather_obj){zombie_eat(eatfather_obj)}
        else {comiendo=false}
    }
}

/* */
/*  */
