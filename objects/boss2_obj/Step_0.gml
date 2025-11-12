event_inherited();

//Estados
if bossready=false{
    state=0
}else{
    if die=false{
        switch(is_attacking){
            case 0://idle
                state=1
                vfx_ingame=0
            break
            
            case 1://Llamando zombis
                state=2
                atack_frame=4
            break
            
            case 2://se mete en el agua
                state=4
                atack_frame=6
                
                if (floor(image_index)==4 and vfx_ingame==0)
                or (floor(image_index)==10 and vfx_ingame==1){
                    audio_play_sound(aguazom_snd,1,false)
                    create_dirt(1)
                    vfx_ingame++
                }
            break
            
            case 3://Lanza el tridente
                state=5
                atack_frame=8
            break
        }
    }else{
        state=3
    }
}

//Sprites y speed image
switch(state){
    default:
        sprite_index=drowned1_spr
        imagespeed2=0
        //if congelado=false{image_speed=0}else{image_speed=0.09}
    break
    
    case 0://Sale del piso
        sprite_index=drowned3_spr
        imagespeed2=0.16
        //if congelado=false{image_speed=0.16}else{image_speed=0.08}
    break
    
    case 1://Idle
        sprite_index=drowned1_spr
        imagespeed2=0.18
        //if congelado=false{image_speed=0.18}else{image_speed=0.09}
    break
    
    case 2://Attack
        sprite_index=drowned2_spr
        imagespeed2=0.22
        //if congelado=false{image_speed=0.22}else{image_speed=0.11}
    break
    
    case 3://Death
        if instance_exists(rayo_anim_obj){
            if rayo_anim_obj.image_index>=7 and die_burned==false{
                die_burned=true
                image_index=0
                sprite_index=drowned6_spr
            }
        }
    
        if die_burned==true{
            congelado=false
            
            if floor(image_index)<9{
                if sprite_index!=drowned7_spr{
                    sprite_index=drowned6_spr
                    imagespeed2=0.25
                    //image_speed=0.25
                }
            }else{
                sprite_index=drowned7_spr
                //image_speed=0
                imagespeed2=0
                image_index=0
            }
            
        }else{
            sprite_index=drowned2_spr
            imagespeed2=0.22
            //if congelado=false{image_speed=0.22}else{image_speed=0.11}
        }
    break
    
    case 4://Se mete en el agua
        sprite_index=drowned4_spr
        imagespeed2=0.22
        //if congelado=false{image_speed=0.22}else{image_speed=0.11}
    break
    
    case 5://Tridente
        sprite_index=drowned5_spr
        if floor(image_index)==16{
            imagespeed2=0
        }else{
            imagespeed2=0.22
            //if congelado=false{image_speed=0.22}else{image_speed=0.11}
        }
        
    break
}

//Cinemática inicial
if global.gameready=0{
    image_alpha=0
    //image_speed=0
    imagespeed2=0
}else{
    if vfx=false{
        image_index=0
        imagespeed2=0.22
        audio_play_sound(aguazom_snd,1,false)
        create_dirt(1)
        vfx=true
    }
    
    if sprite_index=drowned3_spr and image_index>=image_number-1 and bossready=false{
        bossready=true
    }
}
//Cambiar de fase
if vida<=fasehp1 and fase=0{
    fase=1
    instance_create(x-20,y-125,graveeffect1_obj)
    audio_play_sound(wetbrains_pain_snd,1,false)
    atackcall=maxcall
    atacktype=0
    state=1
    maxcall=600
}

if vida<=fasehp2 and fase=1{
    fase=2
    with(instance_create(x-20,y-125,graveeffect1_obj)){sprite_index=zom3_spr}
    audio_play_sound(wetbrains_pain_snd,1,false)
    atackcall=maxcall
    atacktype=0
    state=1
    maxcall=300
}

//Animación de muerte
if die==true and sprite_index==drowned6_spr and prize==false{
    prize=true    
    with(instance_create(x-32,y+32,newprize_obj)){
        sprite_index=trophy1_spr;
        plantroom=price_rm;
        lvl=52
        prizevar="niveles";
        snd=finalprize_snd
        money=1000
                
        if room==levelhard3_6_rm{
            sprite_index=cattailslot_spr
            prizevar="levelhard3"
            lvl=6
            money=2000
        }
    }
}

//Atacar - timer
if atackcall<maxcall{
    if stop=false and global.gameready!=0 and global.gameover=false{atackcall++}
}else{
    atackcall=0
    event_user(0)
    image_index=0
}

//Atacar
if (state==2 or state==4 or state==5) and image_index>=atack_frame and atackdone=false and bossready=true and die==false{
    switch(atacktype){
        case 1://Generar zombis
            //zombis del patio
            var zom_ground=choose(z_imp_obj,z_icehead_obj,z_zombie_obj,z_conehead_obj,z_headbox_obj)
            var zom_water=choose(z_imp_obj,z_zombie_obj,z_headbox_obj)
            var num1=2
            var num2=1
            
            switch(fase){
                case 1:
                    num1=3
                    num2=2
                break
                
                case 2:
                    num1=4
                    num2=3
                break
            }
            //ZOMBIS EN TIERRA
            repeat(num1){
                if fase==1{
                    zom_ground=choose(z_screendoor_obj,z_rocket_obj,z_icehead_obj,z_zombie_obj,z_conehead_obj)
                }else if fase==2{
                    zom_ground=choose(z_buckethead_obj,z_rocket_obj,z_icehead_obj,z_conehead_obj,z_polevaulter_obj,z_zombie_obj)
                }
            
                var yy = get_closest_row(irandom_range(100,640))
                var xx=1180 + irandom(20)
                with(instance_create(xx,yy,zom_ground)){image_alpha=0.5}
            }
            
            //Zommbis de la piscina
            var yy_temp=choose(zombispawn_obj.f3,zombispawn_obj.f4)
            repeat(num2){
                if fase==1{
                    zom_water=choose(z_headbox_obj,z_zombie_obj,z_conehead_obj,z_buckethead_obj,z_snorkel_obj)
                }else if fase==2{
                    zom_water=choose(z_snorkel_obj,z_duckytube_obj,z_conehead_obj,z_buckethead_obj,z_screendoor_obj)
                }
            
                with(instance_create(irandom_range(800,1000),yy_temp,zombiegrave_obj)){
                    water=true 
                    obj=zom_water
                }
                if yy_temp==zombispawn_obj.f3 yy_temp=zombispawn_obj.f4 else yy_temp=zombispawn_obj.f3
            }
            
            audio_play_sound(zombies_coming_snd,0.9,false)
        break
        
        case 2://Roba plantas
            if instance_exists(typeplant_obj){
                var obj_temp=instance_nearest(irandom_range(320,770),irandom_range(130,560),typeplant_obj)
                
                if instance_exists(obj_temp){
                    with(instance_create(obj_temp.x,obj_temp.y,bosshands_obj)){obj = obj_temp}
                }
            }
        break
        
        case 3://Crea un muro de estatuas y cambiar de posición lol
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
        
            var yy = y
            repeat(4){
                with(instance_create(1190,yy,z_statue_obj)){
                    warn=true
                    warn_rush=true
                    hspeed=irandom_range(-14,-15)
                }
                var yy = get_closest_row(irandom_range(100,640))
            }
        break
        
        case 4://Cambiar de posición
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
        
        case 5://Lanzar el tridente
            obj_temp=instance_nearest(random_range(320,770),random_range(130,560),typeplant_obj)
            with(instance_create(x-20,y-90,trident_obj)){obj=obj_temp}
            audio_play_sound(lanzar_snd,0.9,false)
        break
    }
atackdone=true
}

//Terminar el ataque
if is_attacking!=0 and image_index>=image_number-1{
    is_attacking=0
    atackdone=false
    atackcall=0
    atacktype=0
}

//Morir
if vida <= 0 and global.nivelterminado=false and die=false{
    die=true
    image_index=0
    instance_create(x,y,rayo_anim_obj)
    audio_stop_all();
    audio_play_sound(wetbrains_ded_snd,1,false)
}

