event_inherited();
if sleep==false{
    sprite_index = setatoxica_spr
    shake+=0.02
    
    if (image_index>=image_number-0.5) img=0
    
    if (timer <= 0){
    
        explotado=true
        
        with(instance_create(x+5,y-20,powie_obj)){
            sprite_index=splat_spr
        }
        part_particles_create(control_obj.part, x-random_range(-10,12), y, control_obj.p11, 40);
        create_explosion(x,y,3,3.2,2.85,toxicexplo_snd)
        vida = 0;
    }else{
    
        timer-=1
    }
}else{
    sprite_index = setatoxica2_spr
}

//poison particles
if particle>0{
    particle-=1
}else{
    particle=irandom_range(60,120)
    part_particles_create(control_obj.part, x+random_range(-3,3), y-20+random_range(-3,3), control_obj.p5, 3);
}

