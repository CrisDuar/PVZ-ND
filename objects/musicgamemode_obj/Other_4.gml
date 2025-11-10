if instance_exists(backtomenu2_obj){
    if room!=shop_rm{
        if !audio_is_playing(music_chooseseeds_snd){
        audio_play_sound(music_chooseseeds_snd,0.9,true)
        }
    }else{
        if !audio_is_playing(shop_sng){
        audio_play_sound(shop_sng,0.9,true)
        }
    }
}

switch(room){
case morewaysplay_obj:
tes="Modos de juego"
ten="Game modes"
break

case shop_rm:
tes="Tienda"
ten="Shop"
break
}

