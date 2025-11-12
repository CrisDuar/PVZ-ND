if vida <= 0 or global.nivelterminado=true{
    with(instance_create(x-62,y-67+30*water,popdrop_obj)){
        audio_play_sound(pophead_snd,1,false);
        w=other.water
        image_blend=other.image_blend
        sprite_index=bandera_spr
        point=other.y
        depth=other.depth-10
    }
}

event_inherited();
if vida>30{if comiendo=false{sprite_index=abanderado_spr}else{sprite_index=abanderadoeat_spr}}
if vida<=30{if comiendo=false{sprite_index=abanderadobrazo_spr}else{sprite_index=abanderadoeatbrazo_spr}}

