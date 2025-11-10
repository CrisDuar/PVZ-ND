event_inherited();

//Estados
if bossready=false{
    state=0
}else{
    if die=false{
        if is_attacking==false{state=1}
        else{state=2}
    }else{
        state=3
    }
}

//Sprites y speed image
switch(state){
    default:
        sprite_index=necromancer1_spr
        if congelado=false{image_speed=0}else{image_speed=0}
    break
    
    case 0://Sale del piso
        sprite_index=necromancer3_spr
        imagespeed2=0.16
        //if congelado=false{image_speed=0.16}else{image_speed=0.08}
    break
    
    case 1://Idle
        sprite_index=necromancer1_spr
        imagespeed2=0.18
        //if congelado=false{image_speed=0.18}else{image_speed=0.09}
    break
    
    case 2://Attack
        sprite_index=necromancer2_spr
        imagespeed2=0.22
        //if congelado=false{image_speed=0.22}else{image_speed=0.11}
    break
    
    case 3://Death
        sprite_index=necromancer2_spr
        imagespeed2=0.22
        //if congelado=false{image_speed=0.22}else{image_speed=0.11}
    break
}

//Cinemática inicial
if global.gameready=0{
    image_alpha=0
    imagespeed2=0
}else{
    if vfx=false{
        image_index=0
        audio_play_sound(gravesound_snd,1,false)
        create_dirt(0)
        vfx=true
    }
    
    if sprite_index=necromancer3_spr and image_index>=image_number-1 and bossready=false{
        bossready=true
    }
}
//Cambiar de fase
if vida<=fasehp1 and fase=0{
    fase=1
    instance_create(x-20,y-125,graveeffect1_obj)
    audio_play_sound(bosspain2_snd,1,false)
    atackcall=maxcall
    atacktype=0
    state=1
    maxcall=600
}

if vida<=fasehp2 and fase=1{
    fase=2
    with(instance_create(x-20,y-125,graveeffect1_obj)){sprite_index=zom3_spr}
    audio_play_sound(bosspain1_snd,1,false)
    atackcall=maxcall
    atacktype=0
    state=1
    maxcall=480
}

//Animación de muerte
if die==true and image_index>=7{
    audio_play_sound(gravesound_snd,1,false)
    create_dirt(0)
    part_particles_create(control_obj.part, x+random_range(-3,3), y+random_range(-3,3), control_obj.p5, 10);
    with(instance_nearest(x,y,pastoinv_obj)){
        event_user(0)
    }
        
    with(instance_create(x-32,y-32,newprize_obj)){
        sprite_index=trophy1_spr;
        plantroom=price_rm;
        lvl=31
        prizevar="niveles";
        snd=finalprize_snd
        money=1000
                
        if room==levelhard2_6_rm{
            sprite_index=menugoldbloom1_spr
            prizevar="levelhard2"
            lvl=6
            money=2000
        }
    }
    instance_destroy();
}

//Atacar - timer
if atackcall<maxcall{
    if stop=false and global.gameready!=0 and global.gameover=false{atackcall++}
}else{
    is_attacking=true
    atackcall=0
    event_user(0)
    image_index=0
}

//Atacar
if state==2 and image_index>=8 and atackdone=false{
    switch(atacktype){
        case 1://Convertir a plantas en tumbas
            var rep = 1
            if fase>=1 rep=2
            repeat(rep){
                if instance_exists(typeplant_obj){
                    var obj_check=instance_nearest(random_range(320,770),random_range(130,560),typeplant_obj)
                
                    if instance_exists(obj_check){
                        with(instance_create(x-60,y-100,sectatomb_obj)){obj = obj_check}
                    }
                }
            }
        break
        
        case 2://Hacer que las tumbas spawneen zombis
            
            with(soulgrave_obj){
            
                var zombies = choose(zombie1_obj,zombiecarecono_obj,zombieheadbox_obj,imp_obj)
            
                if other.fase==1 zombies = choose(zombiecarecono_obj,zombieheadbox_obj,zombielector_obj,zombiedoor_obj,zombiepapsho_obj)
                if other.fase==2 zombies = choose(zombieheadbox_obj,zombie1_obj,zombiesecta1_obj,skeleton_obj,zomtorch_obj)
            
                with(instance_create(x,get_closest_row(y+28),zombiegrave_obj)){
                    water=other.water
                    obj=zombies
                }
            }
        break
        
        case 3://Hace que spawneen las tumbas
            with(spawngraves7_obj){
                if distance_to_object(gravedetect_obj)>0{
                    with(instance_create(x,y,animgrave_obj)){gravetype=soulgrave_obj}
                }
            }
            
            if instance_exists(soulgrave_obj){
                with(soulgrave_obj){
                    instance_create(x,y-50,graveeffect1_obj)
                    vida=700
                }
            }
        break
        
        case 4://Cambiar de posición
        part_particles_create(control_obj.part, x+random_range(-3,3), y-20+random_range(-3,3), control_obj.p5, 10);
        image_alpha=0
        
        if instance_exists(zombispawn_obj){
            if y = zombispawn_obj.f6{
                y = get_closest_row(y-choose(120,240,360,480,500,620,700))
            }else if y = zombispawn_obj.f1{
                y = get_closest_row(y+choose(120,240,360,480,500,620,700))
            }else{
                y = get_closest_row(y+choose(120,240,360,480,500,620,700)*choose(-1,1))
            }
            garlic_yy=y
        }
        break
        
        case 5://Hacer que las tumbas disparen
            with(soulgrave_obj){
                if global.nivelterminado=false and global.iniciogame=true and global.gameover=false{
                    image_index=0
                    zom=true
                    if other.fase==2{heavy=true}
                }
            }
        break
        
        case 6://Disparar
            instance_create(x-70,y-30,soul2_obj)
        break
    }
audio_play_sound(choose(bossatack1_snd,bossatack2_snd),0.9,false)
atackdone=true
}

//Terminar el ataque
if state=2 and image_index>=image_number-1{
    is_attacking=false
    atackdone=false
    atackcall=0
    atacktype=0
}

//Morir
if vida <= 0 and global.nivelterminado=false and die=false{
    die=true
    image_index=0
    audio_stop_all();
    audio_play_sound(bossdie_snd,1,false)
}

