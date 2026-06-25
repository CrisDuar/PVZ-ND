event_inherited();
broke=icepeabroke_spr
particle=choose(snpeaparticle_spr,snpeaparticle2_spr,snpeaparticle3_spr)

spr = icepea_spr
dmg_zom = 12;

apply_effect = function(_id){
	with(_id){
		//CONGELAMIENTO
		if (!congelado and canfreeze) audio_play_sound(zombifrost_snd,1,false)
	
		if (timecongelado<60*8) timecongelado=60*8;
	}
}