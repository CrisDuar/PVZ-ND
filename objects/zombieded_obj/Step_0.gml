if sprite_index!=dianaded_spr depth=-y;

if control_obj.invisible==true{
image_alpha=0
}


switch(sprite_index){
    default:
    if image_index >= 10{
    if sound=false{sound=true ; audio_play_sound(choose(zfall1_snd,zfall2_snd),1,false)}}
    if image_index >= image_number-1{image_speed=0  ; image_alpha-=0.02}
    break
    
    case impded_spr:
    if image_index >= 5{
    if sound=false{sound=true ; audio_play_sound(choose(zfall1_snd,zfall2_snd),1,false)}}
    if image_index >= image_number-1{image_speed=0  ; image_alpha-=0.02}
    break
    
    case futbolded_spr:
    if image_index >= 7{
    if sound=false{sound=true ; audio_play_sound(choose(zfall1_snd,zfall2_snd),1,false)}}
    if image_index >= image_number-1{image_speed=0  ; image_alpha-=0.02}
    break
    
    case sectario1ded_spr:
    if image_index >= 4{
    if sound=false{
    sound=true
    audio_play_sound(gravesound_snd,1,false)
    }
    if efecto=0{
    efecto=1
    if water==false{
    instance_create(x,y,tierra1_obj)
    instance_create(x,y,tierra3_obj)
    instance_create(x,y,tierra2_obj)
    with(instance_create(x,y,tierra2_obj)){hspeed=-2}
    }
    else{
    audio_sound_pitch(audio_play_sound(aguazom_snd,1,false),random_range(0.85,1.15))
    with(instance_create(x,y+5,tierra1_obj)){sprite_index=agua1_spr}
    with(instance_create(x,y+5,tierra3_obj)){sprite_index=agua3_spr; image_alpha=1}
    instance_create(x,y+5,aguaex_obj)
    }
    }
    image_alpha-=0.1}
    
    if image_index >= image_number-1{image_speed=0}
    break
    
    case flotded_spr:
    if image_index >= image_number-1{
    image_speed=0; image_alpha-=0.1
    if efecto=0{
    efecto=1
    
    with(instance_create(x+100,y+115,tierra1_obj)){sprite_index=agua1_spr}
    with(instance_create(x+100,y+115,tierra3_obj)){sprite_index=agua3_spr; image_alpha=1}
    instance_create(x+100,y+115,aguaex_obj)
    }
    }
    break
    
    case magoded_spr:
    if image_index >= image_number-1{
        part_particles_create(control_obj.part, x, y-40, control_obj.p18, 60)
        audio_sound_pitch(audio_play_sound(magicexplo_snd,1,false),random_range(0.8,1.2))
        instance_destroy();
    }
    break
}

if image_alpha<=0{instance_destroy()}

if hspeed>0{hspeed-=0.1}
if hspeed<0{hspeed+=0.1}

