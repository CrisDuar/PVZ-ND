event_inherited();

if vida>30{if comiendo=false{sprite_index=imp1_spr}else{sprite_index=impeat1_spr}}
if vida<=30{if comiendo=false{sprite_index=imp2_spr}else{sprite_index=impeat2_spr}}

if vida <= 0 or global.nivelterminado=true{
    with(instance_create(x-25,y-42+30*water,popdrop_obj)){
        audio_play_sound(pophead_snd,1,false);
        w=other.water
        image_blend=other.image_blend;
        image_index=4
        point=other.y
        depth=other.depth-10
    }
    with(instance_create(x,y,zombieded_obj)){
        water=other.water
        image_blend=other.image_blend;
        sprite_index=impded_spr
        depth=other.depth-10
    }
    zombiedrop(money);
    instance_destroy();
}

//SOLTAR EL BRAZO

if (vida<=30 or global.nivelterminado=true) and soltarbrazo==false{
    soltarbrazo=true
    with(instance_create(x,y-15,popdrop_obj)){
        audio_play_sound(pophead_snd,1,false);
        w=other.water
        sprite_index=brazo_spr;
        image_blend=other.image_blend;
        image_index=6
        point=other.y
        depth=other.depth-10
    }
}

