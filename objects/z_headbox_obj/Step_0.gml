event_inherited();

if vida<=170{if comiendo=false{sprite_index=carecaja1_spr}else{sprite_index=carecajaeat1_spr}}
if vida<=130{if comiendo=false{sprite_index=carecaja2_spr}else{sprite_index=carecajaeat2_spr}}
if vida<=100{if comiendo=false{sprite_index=zombie1_spr}else{sprite_index=zombieeat_spr}}
if vida<=30{if comiendo=false{sprite_index=zombie1sinmano_spr}else{sprite_index=zombieatsinbrazo_spr}}

if (vida<=100 or global.nivelterminado=true)
and soltarproteccion=false{
    maxhp = 100
    soltarproteccion=true
    with(instance_create(x-25,y-92+30*water,popdrop_obj)){
        audio_play_sound(pophead_snd,1,false);
        w=other.water
        image_blend=other.image_blend;
        point=other.y;
        sprite_index=zombiebox_spr;
        depth=other.depth-10
    }
}

