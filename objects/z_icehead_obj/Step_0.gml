if vida<=0{
    audio_play_sound(icelettuce_snd,1,false)
    with(typeplant2_obj){
        if collision_rectangle(other.x-100,other.y-140,other.x+100,other.y+120,self,false,false){
            if (timefreeze<60*15) timefreeze=60*15
            with(instance_create(x,y-60,luzcafe_obj)){sprite_index=luzicelettuce_spr}
            instance_create(x,y-60,destroygrave_obj)
        }
    }
    with(instance_create(x,y-90,luzcafe_obj)){sprite_index=luzicelettuce_spr}
    instance_create(x,y-90,destroygrave_obj)
    part_particles_create(control_obj.part, x, y-70, control_obj.p20, 40);
}

event_inherited();

//ataque
if time>0{
    if (ataque==false and x<1115){
        time-=1+(motivated*2)
    }
}else{

    var proceed = false;
    
    if instance_exists(typeplant_obj){
        with(typeplant_obj){ //Checar si alguna planta pasa el filtro para que pueda disparar
            if collision_rectangle(other.x-25, other.y-20, 256, other.y+20,self, false, false)
            and canhit == true
            and sprite_index!=setasolar1_spr
            and sprite_index!=setasolarsleep_spr
            and sprite_index!=setasolarsun1_spr
            and sprite_index!=setamiedica3_spr{
                proceed = true;
                break;
            }
        }
    }
    
    if (proceed or collision_rectangle(x-25, y-45, 256, y+20,pumpkin_obj, false, false)){
        time=random_range(6,18)*room_speed
        ataque=true
        image_index=0
    }
}

if (ataque){
    hspeed=0
    caneat=false
    
    if image_index>=7 and image_index<=8 and shooted=false{
        with(instance_create(x-65,y-55,iceball_obj)){image_blend=other.image_blend}
        shooted=true
    }
    
    if image_index>=13.5{
        ataque=false
        shooted=false
    }
}else{
    caneat=true
}

if vida<=150{
    if ataque=true{sprite_index=icezombieattack1_spr}
    else if comiendo=true {sprite_index=icezombieeat1_spr}
    else {sprite_index=icezombiewalk1_spr}
}

if vida<=30{
    if ataque=true{sprite_index=icezombieattack2_spr}
    else if comiendo=true {sprite_index=icezombieeat2_spr}
    else {sprite_index=icezombiewalk2_spr}
}

