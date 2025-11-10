var am = instance_number(eatfather_obj)+instance_number(vase_obj)+instance_number(bowlinghead_obj)-instance_number(signclaire_obj)-instance_number(zombiediana_obj)-instance_number(boss1_obj)-instance_number(boss2_obj)-instance_number(beachballdrop_obj)-instance_number(trashcan_obj)-instance_number(caja_obj)

if am==0{
    t--
}


if t<=0 and crrnt_hrd<=hordes{
    if global.iniciogame=true and crrnt_hrd<hordes{
        instance_create(0,0,fadeout_obj)
        audio_play_sound(finalwave_snd,1,false)
    }
    event_user(0)   
}

if instance_exists(zombispawn_obj){
    zombispawn_obj.lvl_es = lvlnm_es + " (Sección " + string(crrnt_hrd) + "/"+  string(hordes) + ")"
    zombispawn_obj.lvl_en = lvlnm_en + " (Section " + string(crrnt_hrd) + "/"+  string(hordes) + ")"
}

