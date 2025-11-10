event_inherited();

if vida<=300{if comiendo=false{sprite_index=cono1_spr}else{sprite_index=conoeat1_spr}}
if vida<=200{if comiendo=false{sprite_index=cono2_spr}else{sprite_index=conoeat2_spr}}
if vida<=150{if comiendo=false{sprite_index=cono3_spr}else{sprite_index=conoeat3_spr}}
if vida<=100{if comiendo=false{sprite_index=zombie1_spr}else{sprite_index=zombieeat_spr}}
if vida<=30{if comiendo=false{sprite_index=zombie1sinmano_spr}else{sprite_index=zombieatsinbrazo_spr}}

if (vida<=100 or global.nivelterminado=true)
and soltarproteccion=false{
    maxhp = 100
    soltarproteccion=true
    with(instance_create(x-25,y-102+30*water,popdrop_obj)){
        audio_play_sound(pophead_snd,1,false);
        w=other.water
        image_blend=other.image_blend;
        point=other.y;
        sprite_index=cono_spr
        depth=other.depth-10
    }
}

