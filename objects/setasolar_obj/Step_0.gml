event_inherited();
if t_grow>0 and global.iniciogame=true and global.nivelterminado=false and global.gameover=false and sleep == false{
    t_grow--
}
/*
if global.iniciogame=true
and startsun=false{
startsun=true
alarm[0]=room_speed*(5+random(3))
}

//sol
if sleep=false{
if sprite_index==imgshot{
if image_index>=10 and disparando=false{
switch(imgshot){
    case setasolarsun1_spr:
    with(instance_create(x,y,sol_flower_obj))
    {costo=15 ; scale=0.7}
    break
    
    case setasolarsun2_spr:
    with(instance_create(x,y,sol_flower_obj))
    {costo=25}
    break
}
//if imgidle==setasolar1_spr and sleep=false {suns++}
disparando=true
}

if image_index>=image_number-0.5{
image_index=0
disparando=false
sprite_index=imgidle
}
}
*/
if sun==false and t_grow<=0 and done=false and sprite_index!=spr_prod{
    can_sprite=false
    done=true
    image_index=0
    sprite_index=setasolargrow_spr
    audio_play_sound(grow1_snd,1,false)
}

if sprite_index==setasolargrow_spr and image_index>=image_number-1{
    can_sprite=true
    sun=false
    spr_idle=setasolar2_spr
    spr_prod1=setasolarsun2_spr
    d_grow=true
    sprite_index=spr_idle
}
//}else{sprite_index=setasolarsleep_spr}

/* */
/*  */
