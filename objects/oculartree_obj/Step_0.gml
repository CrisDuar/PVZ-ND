event_inherited();
depth=(-y+5)+(x/150)

/*state=0 idle
state=1 attack anim
state=2 attack
state=3 pincha ojo
state=4 cries
*/

if a_<360{
    a_+=2
}else{
    a_=0
}

if global.gameover=true or global.nivelterminado=true or global.iniciogame=false{
    time=room_speed*5
    state=0
}

if state=0{
    if time>0{
        sprite_index=oculartree0_spr
        time-=cadencia
    }else{
        sprite_index=oculartree1_spr
    }
    
    if global.gameover=false and global.nivelterminado=false and global.iniciogame=true{
    
        if collision_line(x+50, y-10, 1115, y,eatfather_obj, false, false) and time<=0{
            state=1
            image_index=0
            sprite_index=oculartree2_spr
            time=room_speed*12
        }
    }
}

if state=1{
    if image_index>=6 and start=false{
        obj=instance_create(x+13,y-21,eye_obj)
        
        with(obj){
            og=other.id
            obj=collision_line_first(other.x+50, other.y-10, 1115, other.y,eatfather_obj, false, false)
        }
        
        a_=1
        audio_sound_pitch(audio_play_sound(oculartree_snd,1,false),random_range(0.7,1.2))
        part_particles_create(control_obj.part, x+13, y-21, control_obj.p14, 1);
        start=true
    }

    if image_index>=image_number-0.5{
        if instance_exists(obj){
            state=2
        }else{
            time=room_speed*12
            state=0
        }
    }
}else{
    start=false
}

if state=2{
    sprite_index=oculartree3_spr
    if !instance_exists(obj){
        state=0
    } 
}
/*
if image_alpha<1{
    if state<3{
        state=3
        image_index=0
        sprite_index=oculartree4_spr
    }else if state=4{
        cry=room_speed*12
    }
}

if state=3 and image_index>=image_number-1{
    state=4
    cry=room_speed*12
}

if state=4{
    sprite_index=oculartree5_spr
    cry--
    
    if cry<=0 {state=0; time=room_speed*12}
}

/* */
/*  */
