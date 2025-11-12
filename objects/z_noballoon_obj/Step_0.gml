event_inherited();

if vida<=120{if comiendo=false{sprite_index=zombieglobo1_spr}else{sprite_index=zombieglobo4_spr}}
if vida<=100{if comiendo=false{sprite_index=zombieglobo2_spr}else{sprite_index=zombieglobo5_spr}}
if vida<=30{if comiendo=false{sprite_index=zombieglobo3_spr}else{sprite_index=zombieglobo6_spr}}

if (vida<=100 or global.nivelterminado=true)
and soltarproteccion=false{
    maxhp = 100
    soltarproteccion=true
    with(instance_create(x-25,y-100+30*water,popdrop_obj)){
        audio_play_sound(pophead_snd,1,false);
        w=other.water
        image_blend=other.image_blend;
        point=other.y;
        sprite_index=gorrito_spr;
        depth=other.depth-10
    }
}

