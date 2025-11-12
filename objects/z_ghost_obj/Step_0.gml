event_inherited();

if comiendo=false{
    sprite_index=ghost1_spr
}else{
    sprite_index=ghost2_spr
}

//morir
if (vida <= 0 or global.nivelterminado=true) and global.gameover=false{
    with(instance_create(x,y,zombieded_obj)){sprite_index=ghostded_spr ; image_blend=other.image_blend; water=false}
    zombiedrop(money)
    instance_destroy();
}

if collision_rectangle(x-100,y-120,x+100,y+120,plantern_obj,false,false){
    if t>0{
        t--   
    }else{
        t=choose(60,120)
        vida-=15
        instance_create(x,y-50,destroygrave_obj)
        instance_create(x,y-50,luzcafe_obj)
        audio_sound_pitch(audio_play_sound(ghostdmg_snd,1,false),random_range(0.8,1.2))
        if control_obj.invisible==false image_alpha=0.5
        repeat(10) part_particles_create(part, x-random_range(-20,20), y-random(90), p1, 1);
    }
    inv = false
}else{
    if collision_rectangle(x+15, y-45, x-90, y+5,typeplant2_obj, false, false) and x<=1115 and x>=300 and stop==false{
        inv = true
    }else{
        inv = false
    }
}

if inv==true{
    if lph_mod>0.5 lph_mod-=0.05
    mask_index=ghostnohit_spr
    caneat=false
    comiendo=false
}else{
    if lph_mod<1 lph_mod+=0.05
    mask_index=sprite_index
    caneat=true
}


