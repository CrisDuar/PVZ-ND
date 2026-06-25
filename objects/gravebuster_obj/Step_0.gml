event_inherited();
depth=-ystart-30
yy+=vspd

if timer>0{
    timer--
}else{
    instance_create(x,ystart,gravedestroy_obj)
    if disfraz==0 and room!=izombie_rm and control_obj.multijugador==false and room!=nivel26_rm{
        instance_create(x,y-50,choose(silvercoin_obj,goldencoin_obj))
    }
    
    vida = 0;
}
/*
if room=izombie_rm{
    if g<360{g+=4}else{g=0}
    scale = (1/2)*sin(degtorad(g))+0.5
    
    s = 1+(scale/6)
    if global.lang="en"{txt = "Prezz tO BITE!!!"}
    else{txt = "¡Preziona pAra MORDER!!"}
}
*/
if distance_to_object(gravedetect_obj)>1{
    instance_destroy()
}
/*
if distance_to_object(grave4_obj)<0.5{
    if vidaeffect>0{
        vidaeffect-=1
    }else{
        vidaeffect=30;
        vida -=25
        image_alpha=0.5
        audio_sound_pitch(audio_play_sound(escudo_snd,0.5,false),random_range(0.85,1.15))
        repeat(3){with(instance_create(x+random_range(-20,20),y-50,nutparticle_obj)){sprite_index=zomgravepart_spr}}
    }
}
*/
if vida<=100{sprite_index=comepiedras1_spr}
if vida<=70{sprite_index=comepiedras2_spr}
if vida<=40{sprite_index=comepiedras3_spr}

/* */
/*  */
