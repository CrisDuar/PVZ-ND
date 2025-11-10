event_inherited();

if sleep==false{
    if sprite_index=imgshot{
    if image_index>=5 and disparando=false and explotando>0{
        audio_play_sound(choose(puff1_snd,puff2_snd), 1, false);
        with(instance_create(x+17,y-40,sporepuff_obj)){
            rule_xlimit=true
            xx_lim=320
            yy=35
        }
        disparando=true
    }
    
    if image_index>=image_number-1{
        sprite_index=imgidle
        image_index=2
        disparando=false
    }
}

//Explotar
if global.gameover==false explotime--

if explotime<=0{
    if dis<360 dis+=15 else dis=0;
    lph_mod = (0.5*sin(degtorad(dis))+0.75)

    explotando--
}

if explotando<=0{
    cadencia=0
    disparando=false
    
    if sprite_index!=imgexplo{
        image_index=0
        sprite_index=imgexplo
    }else if image_index>image_number-1{
        instance_create(x,y,explopuff1_obj)
        instance_destroy();
    }
}
}else{
    sprite_index=imgsleep
}

