event_inherited();

if vida<=1000{if comiendo=false{sprite_index=coffinzombie1_spr}else{sprite_index=coffinzombie4_spr}}
if vida<=600{if comiendo=false{sprite_index=coffinzombie2_spr}else{sprite_index=coffinzombie5_spr}}
if vida<=300{if comiendo=false{sprite_index=coffinzombie3_spr}else{sprite_index=coffinzombie6_spr}}
if vida<=100{if comiendo=false{sprite_index=zombie1_spr}else{sprite_index=zombieeat_spr}}
if vida<=30{if comiendo=false{sprite_index=zombie1sinmano_spr}else{sprite_index=zombieatsinbrazo_spr}}

if (vida<=100 or global.nivelterminado=true)
and soltarproteccion=false{
    peso=0
    maxhp = 100
    soltarproteccion=true
    with(instance_create(x,y-60+30*water,popdrop_obj)){
        audio_play_sound(pophead_snd,1,false);
        image_blend=other.image_blend;
        point=other.y;
        image_index=0
        sprite_index=coffindrop_spr
        depth=other.depth-10
        hspeed=-1
    }
    with(instance_create(x,y-60+30*water,popdrop_obj)){
        audio_play_sound(pophead_snd,1,false);
        image_blend=other.image_blend;
        point=other.y;
        image_index=1
        sprite_index=coffindrop_spr
        depth=other.depth-10
        hspeed=choose(0.5,1)
    }
    
    imagespeed1=0.18//eat
    instance_create(x,y-60+30*water,destroygrave_obj)
    audio_play_sound(coffindestroy_snd,1.2,false)
}

