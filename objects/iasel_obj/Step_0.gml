if global.iniciogame=false
or global.gameover=true
{image_alpha=0}
else if control_obj.multijugador=true
{image_alpha=1}
if audio_is_playing(newplant_snd){
instance_destroy();
}

switch(ycount){
    case 1:
    y=128
    break
    
    case 2:
    y=200
    break
    
    case 3:
    y=272
    break
    
    case 4:
    y=344
    break
    
    case 5:
    y=416
    break
    
    case 6:
    y=488
    break
}

