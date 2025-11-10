depth=-y+20

if instance_exists(eatfather_obj){
obj = instance_nearest(x+10,y+20,eatfather_obj)
objx = obj.x
}

//mordido

if global.gameover=true
{image_speed=0}

if image_alpha<1
{image_alpha+=0.05}

//veneno
if global.gameover=false
{
if poison=true{
image_blend=c_gray
    if global.nivelterminado=false{
    if particle>0{
    particle-=1
    }
    else
    {
    particle=irandom_range(60,120)
    //instance_create(x+6,y+30,poisonparticle_obj)
    }

    if poisontime>0{
    poisontime-=1
    }
    else
    {
    poisontime=120
    image_alpha=0.5
    if vida >0{
        vida-=15
        audio_play_sound(choose(poison1_snd,poison2_snd),1,false)
        }
        else
        {
            audio_play_sound(poison3_snd,1,false)
            instance_destroy();
        }
    }
}
}
}

