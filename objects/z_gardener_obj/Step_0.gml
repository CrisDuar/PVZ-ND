event_inherited();

//ataque
if time>0 and ataque=false and global.gameover=false and x<1115{
    time-=1+(motivated)
}

if time<=0 and 
(collision_rectangle(x-10, y-15, x-100, y+5,typeplant_obj, false, false)
or collision_rectangle(x-10, y-45, x-100, y+5,pumpkin_obj, false, false)){
    time=7*60
    ataque=true
    image_index=0
}

if ataque=true{
    hspeed=0
    caneat=false
    if image_index>=2 and shooted=false{
        instance_create(x-40,y-55,herbicida_obj)
        part_particles_create(control_obj.part, x-40, y-55, control_obj.p5, 5);
        shooted=true
    }
    
    if image_index>=11{
        ataque=false
        shooted=false
    }
}
else{
    caneat=true
}


//Sprites
if vida>140{
    if ataque=true{sprite_index=gardshoot1_spr}
    else if comiendo=true {sprite_index=gardeat1_spr}
    else {sprite_index=gardwalk1_spr}
}else if vida>100{
    if ataque=true{sprite_index=gardshoot2_spr}
    else if comiendo=true{sprite_index=gardeat2_spr}
    else {sprite_index=gardwalk2_spr}
}else if vida>30{
    if ataque=true{sprite_index=gardshoot3_spr}
    else if comiendo=true {sprite_index=gardeat3_spr}
    else {sprite_index=gardwalk3_spr}
}else{
    if ataque=true{sprite_index=gardshoot4_spr}
    else if comiendo=true {sprite_index=gardeat4_spr}
    else {sprite_index=gardwalk4_spr}
}

if (vida<=100 and soltarproteccion=false) or (global.nivelterminado==true){
    maxhp = 100
    soltarproteccion=true
    drop(x-27,y-105+30*water,gorra_spr,0,true,image_blend,y,depth-10)
}

