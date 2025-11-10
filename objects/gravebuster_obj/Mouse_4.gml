/*if room=izombie_rm and point_in_rectangle(mouse_x,mouse_y,x-50,y-90,x+50,y+30){
    //instance_create(x,y-50,bitepart_obj)
    scale=1.5
    image_alpha=0.5
    vida-=15
    audio_play_sound(choose(pea_impact_snd,pea_impact2_snd),1,false)
    audio_play_sound(choose(zombiebite1_snd,zombiebite2_snd),0.5,false)
    repeat(3){with(instance_create(x+random_range(-20,20),y-50,nutparticle_obj)){sprite_index=zomgravepart_spr}}
    if vida <=0 then audio_play_sound(zombie_eatend_snd,1,false)
}

/* */
/*  */
