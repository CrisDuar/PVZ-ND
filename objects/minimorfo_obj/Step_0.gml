event_inherited();

if sprite_index=imgshot{
    if image_index>=5 and disparando=false{
        audio_play_sound(choose(puff1_snd,puff2_snd), 1, false);
        with(instance_create(x+17,y-40,sporepuff_obj)){
            rule_xlimit=true
            xx_lim=410
            yy=35
        }
        disparando=true
    }

    if image_index>=image_number-0.5{
        sprite_index=imgidle
        image_index=2
        image_speed=0.16
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
    instance_create(x,y,explopuff1_obj)
    instance_destroy();
}

