audio_stop_sound(music_levelselection_snd)
if !audio_is_playing(music_chooseseeds_snd) and !instance_exists(dialogctrl_obj)
{audio_play_sound(music_chooseseeds_snd,1,true)}
snd=music_loonbon_snd

switch(room){
case nivel15_rm:
case nivel48_rm:
case nivel72_rm:
snd=music_ultimatebattleday_snd
break

case multiplayer1_rm:
if control_obj.night==false{snd=music_ultimatebattleday_snd}else{snd=music_ultimatebattlenight_snd}
break

case nivel9_rm_:
case nivel11_rm:
case nivel24_rm:
case nivel34_rm:
case nivel40_rm:
case nivel49_rm:
case nivel63_rm:
snd=music_loonbon_snd
break

case nivel37_rm:
snd=music_ultimatebattlenight_snd
break

case nivel4_rm_:
case nivel14_rm:
case nivel26_rm:
case iplant_rm:
case izombie_rm:
snd=music_demostrationminigame_snd
break

case nivel30_rm:
case levelhard2_6_rm:
snd=boss1_sng
break

case nivel51_rm:
case levelhard3_6_rm:
snd=boss2_sng
break
}

if instance_exists(vasectrl_obj){
    snd=cerebrawl_sng
}

