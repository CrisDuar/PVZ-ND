event_inherited();

if vida<=600{if comiendo=false{sprite_index=cubo1_spr}else{sprite_index=cuboeat1_spr}}
if vida<=400{if comiendo=false{sprite_index=cubo2_spr}else{sprite_index=cuboeat2_spr}}
if vida<=240{if comiendo=false{sprite_index=cubo3_spr}else{sprite_index=cuboeat3_spr}}
if vida<=100{if comiendo=false{sprite_index=cubo4_spr}else{sprite_index=cuboeat4_spr}}
if vida<=30{if comiendo=false{sprite_index=cubo5_spr}else{sprite_index=cuboeat5_spr}}

if (vida<=100 or global.nivelterminado=true)
and soltarproteccion=false{
    maxhp = 100
    soltarproteccion=true
    with(instance_create(x-25,y-102+30*water,popdrop_obj)){
        audio_play_sound(pophead_snd,1,false);
        image_blend=other.image_blend;
        point=other.y;
        sprite_index=cubo_spr
        depth=other.depth-10
    }
}

