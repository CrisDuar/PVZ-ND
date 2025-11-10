event_inherited();
//fases
switch(dark_fase){
    case 0:
        maxcall=600
    break
    
    case 1:
        maxcall=500
    break
    
    case 2:
        maxcall=400
    break;
    
    case 3:
        maxcall=500
    break
}

//Estados
if bossready=true and global.iniciogame==true and global.gameover=false{
    if dark_time<=60*23 and die=false{
        if goback_tmr<=0 or x>1100{
            goback_tmr=0
            if comiendo=false{
                switch(is_attacking){
                    case 0://walk
                        state=0;
                        vfx_ingame=0
                    break
                    
                    case 1://idle
                        state=1
                        atack_frame=0
                    break
                    
                    case 2://aplastar
                        state=2
                        atack_frame=12
                    break
                    
                    case 3://Scream
                        state=3
                        atack_frame=4
                        caneat=false
                    break
                }
            }else{
                state=6
            }
        }else{//go back
            state=4
        }
    }else{//stunned
        state=5
    }
    
    //boxes
    if box_t<box_max{
        if dark_lph>0 box_t++;
    }else{
        box_t=0
        
        repeat(dark_fase+2){                
            instance_create(0,0,cajaspawn_obj)
        }
        
        plntrn_n++
        /*
        if dark_lph>=1{
            with(eatfather_obj){
                if x>other.dark_x{
                    x=other.dark_x + irandom_range(100,200)
                }
            }
        }*/
    }
}

//eat
if comiendo==true{
    if st_eat==false{
        st_eat = true
        image_index=0
    }
}else{
    st_eat = false
}

//Sprites y speed image
switch(state){
    default:
        image_xscale=1
        sprite_index=dark1_spr
        walkspeed=0
        imagespeed2=0//walk
        caneat=false
        shake=0
    break
    
    case 0://caminar
        image_xscale=1
        sprite_index=dark2_spr
        caneat=true
        var spd = 0.1
        var wspd = -0.1
        shake=0
        
        if bossready==false or dark_fase>=3{
            spd = 0.18
            wspd = -0.33
        }
        
        imagespeed2=spd
        
        if (floor(image_index)<17 and floor(image_index)>9) or floor(image_index)<7{
            walkspeed=wspd
        }else{
            walkspeed=0
        }
    break
    
    case 1://idle
        image_xscale=1
        sprite_index=dark1_spr
        imagespeed2=0.18
        walkspeed=0
        caneat=true
        shake=0
    break
    
    case 2://Attack
        image_xscale=1
        sprite_index=dark3_spr
        imagespeed2=0.22
        walkspeed=0
        shake=0
        caneat=false
        
        if floor(image_index)==12 and vfx_ingame==0{
            vfx_ingame=1
            audio_play_sound(thump_snd,1,false)
            instance_create(x-30,y-25,destroygrave_obj)
        }
        if image_index>=image_number-1{
            vfx_ingame=0
        }
    break
    
    case 3://gritar
        image_xscale=1
        sprite_index=dark4_spr
        imagespeed2=0.22
        walkspeed=0
        caneat=false
        shake=0
        
        if floor(image_index)==4 and vfx_ingame==0{
            audio_sound_pitch(audio_play_sound(darkscream_snd,1,false),random_range(0.8,1.2))
            vfx_ingame=1
        }
        
        if image_index<=4 or image_index>image_number-1{
            vfx_ingame=0
        }
    break
    
    case 4://caminar hacia atrás
        sprite_index=dark5_spr
        image_xscale=-1
        caneat=false
        comiendo=false
        st_eat=false
        shake=0
        
        var spd = 0.23
        var wspd = 0.5
        imagespeed2=spd
        
        if (floor(image_index)<17 and floor(image_index)>9) or floor(image_index)<7{
            walkspeed=wspd
        }else{
            walkspeed=0
        }
        
        if (stop == false) goback_tmr--;
    break
    
    case 5://Aturdido
        sprite_index=dark4_spr
        image_index=5
        image_xscale=1
        caneat=false
        shake=1
        walkspeed=0
        imagespeed2=0
        
        if timestop<room_speed*2{timestop=room_speed*2}
        
        if die==true{
            image_blend=make_colour_rgb(die_col,die_col,die_col)
            
            if die_col<=0{
                lph_mod -=0.01
            }else{
                die_col-=2
            }
        }
    break;
    
    case 6://eat
        image_xscale=1
        sprite_index=dark3_spr
        imagespeed2=0.22
        walkspeed=0
        shake=0
        
        if floor(image_index)==12 and vfx_ingame==0{
            caneat=true
            vfx_ingame=1
            audio_play_sound(thump_snd,1,false)
            instance_create(x-30,y-25,destroygrave_obj)
        }else{
            caneat=false
        }
        
        if image_index>=image_number-1{
            vfx_ingame=0
            caneat=true
        }
    break
}

//shake screen when screaming
if audio_is_playing(darkscream_snd){
    control_obj.shake = 15
}

//Cinemática inicial
if global.gameready=0{
    image_alpha=0
    image_index=0
    state=-1
}else if bossready=false{
    if state==-1 state=0;

    if state==0{//caminar
        if x<=1100{
            image_index=0
            state=1
        }
    }else if state==1{//idle
        if image_index>image_number-1{
            if vfx==false and !audio_is_playing(boss3_1_sng) and dark_area_obj.full_lph<=0{//antes del grito
                image_index=0
                state=3
            }else if !audio_is_playing(thunder_snd) and dark_lph>=1{//después del grito
                bossready=true
                state=1
                is_attacking=1
            }
        }
    }else if state==3{//gritar
        if image_index>4{
            vfx=true
            
            if image_index>image_number-1{
                state=1
                image_index=0
            }else{
                control_obj.shake = 15
            }
        }
    }
    
    if dark_lph<1 and vfx==true{
        dark_lph+=0.05
    }
}else{
    //Dark Zone
    if dark_time>0 and (stop==false or state==5) dark_time--
    
    if dark_lph<1 and dark_time<=0 and dark_fase<3{
        dark_lph+=0.05
    }
}
//plantern_obj
if dark_lph>=1{
    vida = hp_shield;
    trazo_obj.x = dark_x-100
    goback_tmr=0
    fase_up=false
}else{
    hp_shield = vida
    dark_x=2000
    trazo_obj.x = 2000
    
    var hp_dif = 100
    var dist = 1000
    var plus = 10
    
    if dark_fase>=3{
        hp_dif = 600
        dist = 700
        plus = 15
    }else if dark_fase>=1{
        hp_dif = 300
        plus = 8
    }
    
    if (abs(vida-goback_hp)>hp_dif and x<dist){
        goback_tmr=60*plus
        goback_hp=vida
        
        if state<4{
            audio_sound_pitch(audio_play_sound(darkpain_snd,1,false),random_range(0.8,1.2))
        }
        
        if fase_up==false{
        
            if display_fase<5 display_fase++
            fase_up=true
            
            canfase_up++
            
            if canfase_up>dark_fase{
                dark_fase++
                canfase_up=0
            }
            
            if boss3_obj.dark_fase<3 instance_create(x,y-120, animboss_obj)
        }
    }
}
dark_x=x+100
trazo_obj.image_alpha=0

//Animación de muerte
if die==true and lph_mod<=0 and prize==false{
    prize=true    
    with(instance_create(x-32,y+32,newprize_obj)){
        sprite_index=trophy1_spr;
        plantroom=price_rm;
        lvl=74
        prizevar="niveles";
        //snd=finalprize_snd
        money=1000
    }
    instance_destroy();
}

if comiendo==false and state!=4 and die==false{     
    //Atacar - timer
    if global.iniciogame==true{
        if atackcall<maxcall{
            if global.gameready!=0 and global.gameover=false and (dark_lph>=1 or dark_fase>=3){atackcall++}
        }else{
            atackcall=0
            event_user(0)
        }
    }
    
    //Atacar
    if image_index>=atack_frame and atackdone==false and bossready==true and x>260{
        caneat=false
        switch(atacktype){
            case 1://Generar zombis
                switch(dark_fase){
                    case 0:
                        var num=irandom_range(1,2)
                    break;
                    
                    case 1:
                        var num=irandom_range(3,4)
                    break;
                    
                    case 2:
                        var num=irandom_range(4,6)
                    break;
                    
                    case 3:
                        var num=irandom_range(5,8)
                    break;
                    
                }
                repeat(num){
                    switch(dark_fase){
                        case 0:
                            var zom=choose(imp_obj,zombie1_obj,zombiecarecono_obj,zombiedoor_obj)
                        break;
                        
                        case 1:
                            var zom=choose(zombie1_obj,zombidoctor_obj,zombiecarecono_obj,zombiecarecubo_obj,zombiecajita_obj,zombielector_obj)
                        break;
                        
                        case 2:
                            var zom=choose(zombiecarecubo_obj,zombielector_obj,zombieheadbox_obj,zombiecarecono_obj,skeleton_obj)
                        break;
                        
                        case 3:
                            var zom=choose(zombiecarecubo_obj,zombidoctor_obj,zombiecarecono_obj,skeleton_obj, zomtorch_obj, zombiecajita_obj, zombielector_obj, zombie1_obj)
                        break;
                    }
                    
                    var yy = get_closest_row(irandom_range(100,640))
                    var xx = dark_x+irandom(100)
                        
                    if dark_fase>=3{
                        xx = 900+irandom(100)
                    }
                    
                    with(instance_create(xx,yy,zombiegrave_obj)){
                        obj=zom
                        sprite_index=object_get_sprite(obj)
                    }
                }
                atackdone=true
            break
            
            case 2://Cambia de posición
                if instance_exists(zombispawn_obj){
                    if y = zombispawn_obj.f6{
                        garlic_yy = get_closest_row(y-120)
                    }else if y = zombispawn_obj.f1{
                        garlic_yy = get_closest_row(y+120)
                    }else{
                        garlic_yy = get_closest_row(y+choose(-120,120))
                    }
                }
                atackdone=true
            break
            
            case 3://Crea máscaras
                for(var i=0; i<5; i++){
                    repeat(irandom_range(1, 1 + display_fase)){
                        var yy = get_closest_row(120+120*i)
                        var xx = dark_x+irandom(100)
                        
                        if dark_fase>=3{
                            xx = 1120+irandom(100)
                        }
                        
                        instance_create(xx,yy,cursedmask_obj)
                    }
                }
                atackdone=true
            break
            
            case 4://Crea tierra
                with(instance_create(x-90,y,groundatk_obj)){
                    amount=clamp(other.dark_fase+1,2,6)
                }
            
                atackdone=true
            break
            
            case 5://Generar rayos
                switch(dark_fase){
                    case 0:
                        var n = 1
                    break;
                    
                    case 1:
                        var n = irandom_range(1,2)
                    break;
                    
                    case 2:
                        var n = 2
                    break;
                    
                    case 3:
                        var n = 3
                    break;
                }
                var f1 = 120;
                var f2 = 240;
                var f3 = 360;
                var f4 = 480;
                var f5 = 600;
                var yy_temp=choose(f1,f2,f3,f4,f5)
                audio_play_sound(zapear2_snd,1,false)
                
                repeat(n){
                    with(instance_create(max(x-80-irandom(20),500),get_closest_row(yy_temp),rayo_anim_obj)){
                        sfx=false
                        obj=choose(imp_obj, zombie1_obj,zombieheadbox_obj,zombiecarecono_obj)
                    }
                    
                    if yy_temp==f1{yy_temp=choose(f2,f3,f4,f5)}
                    else if yy_temp==f2{yy_temp=choose(f1,f3,f4,f5)}
                    else if yy_temp==f3{yy_temp=choose(f1,f2,f4,f5)}
                    else if yy_temp==f4{yy_temp=choose(f1,f2,f3,f5)}
                    else{yy_temp=choose(f1,f2,f3,f4)}
                }
                
                atackdone=true
            break
            
            case 6://bomba de veneno
                switch(dark_fase){
                    default:
                        var n = 1
                    break
                    
                    case 3:
                        var n = 2
                    break;
                }
                
                repeat(n){
                    if instance_exists(typeplant2_obj){
                        with(instance_create(x-35,y-15,poisonbomb_obj)){
                            obj = instance_nearest(irandom(1000),irandom(600),typeplant2_obj)
                        }
                    }
                }
                atackdone=true
            break
        }
    }
}
//Terminar el ataque
if (is_attacking!=0 or atacktype!=0) and image_index>image_number-1 and comiendo==false{
    is_attacking=0
    atackdone=false
    atackcall=0
    atacktype=0
}

//Morir
if vida <= 0 and global.nivelterminado=false and die=false{
    die=true
    image_index=0
    audio_stop_all();
    audio_play_sound(finalprize_snd, 1, false)
    audio_play_sound(darkdie_snd,1,false)
    global.nivelterminado=true
}

/* */
/*  */
