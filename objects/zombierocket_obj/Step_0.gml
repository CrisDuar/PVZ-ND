if (x<point or vida<=0 or congelado==true) and (soltarproteccion==false){
    soltarproteccion=true
    with(instance_create(x-25,y-112+30*water,popdrop_obj)){
        audio_play_sound(pophead_snd,1,false);
        w=other.water
        image_blend=other.image_blend;
        sprite_index=rocket_spr;
        point=other.y
        depth=other.depth-10
    }
}
event_inherited();
if vida<=150{
    if x>point and soltarproteccion==false{sprite_index=rocketfire1_spr}
    else if comiendo=true {sprite_index=rocketeat1_spr}
    else {sprite_index=rocketwalk1_spr}
}

if vida<=30{
    if x>point and soltarproteccion==false{sprite_index=rocketfire2_spr}
    else if comiendo=true {sprite_index=rocketeat2_spr}
    else {sprite_index=rocketwalk2_spr}
}

if x>point and soltarproteccion=false{
    part_particles_create(part, x+15+random_range(-10,12), y-100+30*water, p1, irandom_range(1,2));
    caneat=false
    walkspeed=-7
}else{
    caneat=true
    walkspeed=-0.25
}

if sound==false{
sound=true
audio_play_sound(rocket_snd,1,false)
}

if place_meeting(x,y,tallnut_obj) and soltarproteccion==false{
instance_create(x-20,y-80,destroygrave_obj)
audio_play_sound(mazo1_snd,1,false)
image_alpha=0.5
soltarproteccion=true
}

