image_xscale=0.98
image_yscale=0.98

if image_alpha>=1
{
audio_stop_all();
if room!=hardmode_day_rm
and room!=hardmode_night_rm
and room!=hardmode_pool_rm
and room!=hardmode_claire_rm
and room!=vase_sl_rm{room_goto(menu_rm_)}
else{room_goto(morewaysplay_rm)}
}


