tilexx=x-instance_nearest(x,y,pastoinv_obj).x
tileyy=y-instance_nearest(x,y,pastoinv_obj).y

//vida
if vida>maxhp vida=maxhp;

//profundidad
depth=-y+20

//animacion
if global.gameover=true{
    image_speed=0
}else{
    image_speed=img/(freeze+1)
}

if image_alpha<1{image_alpha+=0.05}

if global.iniciogame and lph_dngr>0 lph_dngr-=0.05

if (in_danger and obj_danger == noone){
    obj_danger = instance_create(x,y,danger_back_obj)
    obj_danger.origin = id
}

//veneno
if canpoison=true and global.gameover=false and global.iniciogame=true and global.nivelterminado=false{
    if poison>0{
        poison--
        image_blend=c_gray
        if poisontime>0{
            poisontime--
        }else{
            poisontime=120
            part_particles_create(control_obj.part, x+random_range(-3,3), y-20+random_range(-3,3), control_obj.p5, 3);
            image_alpha=0.5
            vida-=10
            if vida > 0{
                audio_sound_pitch(audio_play_sound(poison1_snd,1,false),random_range(1,1.4))
            }else{
                audio_sound_pitch(audio_play_sound(poison1_snd,1,false),random_range(0.6,0.8))
            }
        }
    }else{
        poison=0
        image_blend=c_white
    }
}

if ((point_in_rectangle(x,y,305,290,1055,440) and __background_get( e__BG.Index, 0 )=poolday_bg) or place_meeting(x,y,charco_obj)) and candrown==true{
    event_perform(ev_collision,charco_obj)
}else{
    if water==true{
        water=false
        up=0
        yy=0
    }
}

//CONGELARSE
if timefreeze>0
{timefreeze-- ; freeze=true}else{freeze=false ; timefreeze=0}

//logro

if (vida < maxhp){
    logros_obj.healthy_garden = false
}

if (!cancoffee){
    logros_obj.good_morning = false
}

