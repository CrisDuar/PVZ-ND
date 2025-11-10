with (control_obj) {
///Viento

alarm[2]=60*25
if global.nivelterminado=false and global.iniciogame=true and windy==true and global.gameover==false{
    if wind==true{
        wind=false
    }else{
        wind=true
        alarm[2]=60*4
        audio_sound_pitch(audio_play_sound(wind_snd,1,false),random_range(0.8,1.2))
    }
}

if global.nivelterminado=true{
    wind=false
}

}
