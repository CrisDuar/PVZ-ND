event_inherited();

if (x<=280) or global.nivelterminado=true{
    vida=0
}

if vida<=0{
    with(instance_create(x,y,z_noballoon_obj)){
        gameover=other.gameover;
        depth=other.depth;
        image_alpha=0
        timecongelado=other.timecongelado
        electro=other.electro
        gooptime=other.gooptime
        horde_id=other.horde_id;
    }
    audio_play_sound(balloon2_snd,1,false)
    instance_create(x,y-120,destroygrave_obj)
    instance_destroy();
}

sprite_index=zombieglobo_spr
if gameover==false depth=-y-30;
timestop=0
frozenstop=0
stop=false
if walkspeed>-0.5 walkspeed-=0.15

if sound==false{
    sound=true
    audio_play_sound(balloon1_snd,1,false)
}

