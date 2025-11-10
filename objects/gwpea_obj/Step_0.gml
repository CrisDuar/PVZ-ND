event_inherited();

clamp(type,0,2)

switch(type){
    case 0:
        snd1=pea_impact_snd
        snd2=pea_impact2_snd
        sprite_index=icepea_spr
        broke=icepeabroke_spr
        particle=choose(snpeaparticle_spr,snpeaparticle2_spr,snpeaparticle3_spr)
    break
    
    case 1:
        snd1=pea_impact_snd
        snd2=pea_impact2_snd
        sprite_index=pea_spr
        broke=peabroke_spr
        particle=peaparticle_spr
    break
    
    case 2:
        snd1=fireimpact_snd
        snd2=fireimpact_snd
        sprite_index=fireball_spr
        broke=firehit_spr
        particle=fireparticle_spr
        part_particles_create(part, x+random_range(-3,3), y+random_range(-3,3), p1, 3);
    break
}

