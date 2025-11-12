//Iluminar en la niebla
if glow<360{
    glow+=0.5
}else{
    glow=0
}


//Fuego
if fire=true{
    part_particles_create(part, x-random_range(55,65), y-random_range(85,95), p1, 3);
    
    var obj1=collision_rectangle(x, y-30, x-70, y+10,typeplant2_obj, false, false)
    var obj2=collision_rectangle(x, y-30, x-70, y+10,brain_obj, false, false)
    
    if obj1{with(obj1){event_perform(ev_collision,firespawn_obj)}}
    if obj2{with(obj2){event_perform(ev_collision,firespawn_obj)}}
    
    if glow_alpha<1 glow_alpha+=0.05
    
    if congelado==true{
        fire=false
    }
}else{
    if glow_alpha>0 glow_alpha-=0.05
}

event_inherited();



if water==true or control_obj.rain==true or instance_exists(stormctrl_obj){fire=false}

if vida>30{
    if comiendo=false{
        sprite_index=zomtorch3_spr
    }else{
        sprite_index=zomtorcheat1_spr
    }
}else{
    if comiendo=false{
        sprite_index=zomtorch4_spr
    }else{
        sprite_index=zomtorcheat2_spr
    }
}

/*
if fire=true{
if vida>30{if comiendo=false{sprite_index=zomtorch1_spr}else{sprite_index=zomtorcheat3_spr}}
if vida<=30{if comiendo=false{sprite_index=zomtorch2_spr}else{sprite_index=zomtorcheat4_spr}}
}

if fire=false{
if vida>30{if comiendo=false{sprite_index=zomtorch3_spr}else{sprite_index=zomtorcheat1_spr}}
if vida<=30{if comiendo=false{sprite_index=zomtorch4_spr}else{sprite_index=zomtorcheat2_spr}}
}*/



/* */
/*  */
