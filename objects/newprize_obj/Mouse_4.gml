if variable_global_exists(prizevar){
    if variable_global_get(prizevar)<lvl{
        variable_global_set(prizevar,lvl)
    }
}
audio_stop_all();
audio_play_sound(seedpack_snd,1,false)

if sprite_index!=bolsa_monedas_spr{
    audio_play_sound(snd,1,false)
    global.price=prizevar
    global.nota=lvl
}else{
    global.dinero+=money
    audio_play_sound(newplant_snd,1,false)
}

with(instance_create(x,y,newplantcenter_obj)){
    sprite_index=other.sprite_index
    plantroom=other.plantroom
}

instance_destroy();

