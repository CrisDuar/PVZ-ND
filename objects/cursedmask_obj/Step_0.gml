event_inherited();
if comiendo=false{sprite_index=masky1_spr}else{sprite_index=masky2_spr}

//NORMAL
if vida <= 0 or global.nivelterminado=true or x<=280{
    instance_create(x,y-60,destroygrave_obj)
    audio_play_sound(choose(piedraded_snd,piedraded2_snd),1.2,false)
    zombiedrop(false);
    instance_destroy();
}

