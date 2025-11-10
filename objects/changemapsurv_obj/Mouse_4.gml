if global.survmap>0
and global.survmap<survmaps_spr
{
audio_play_sound(aceptoption_snd,1,false);
global.survmap+=num
image_xscale=0.98*num
image_yscale=0.98
}

