if vida <= 0 or global.nivelterminado=true{
    with(instance_create(x-62,y-67+30*water,popdrop_obj)){
        audio_play_sound(pophead_snd,1,false);
        w=other.water
        image_blend=other.image_blend
        sprite_index=bandera_spr
        image_index=1
        point=other.y
        depth=other.depth-10
    }
}

event_inherited();
if vida>30{if comiendo=false{sprite_index=rallywalk1_spr}else{sprite_index=rallyeat1_spr}}
if vida<=30{if comiendo=false{sprite_index=rallywalk2_spr}else{sprite_index=rallyeat2_spr}}

