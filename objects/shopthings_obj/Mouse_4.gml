if global.dinero>=cost and alpha>=1{
if confirm==false{with(shopthings_obj){confirm=false}; timer=room_speed*5; confirm=true}
else{
if variable_global_exists(cond){variable_global_set(cond,true); global.dinero-=cost; audio_play_sound(buy_snd,1,false)}
}}

