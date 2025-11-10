event_inherited();

//if sprite_index=imgshot and timer2<16
//{timer2 += image_speed}

if sprite_index=imgshot
and image_index>=5.5{
//timer2=0
audio_play_sound(choose(pea_shoot_snd,pea_shoot2_snd), 1, false);
instance_create(x,y,bulbatck_obj)
/*special=random_range(0,100)
if special > 10{
instance_create(x,y,bulbatck_obj)
special=-1}

if special <= 10 and special > 1.5{
instance_create(x,y,icebulb_obj)
special=-1}

if special <= 1.5 and special > -1{
instance_create(x,y,bulbfire1_obj)
special=-1}*/
sprite_index=basebulb_spr
cadencia=0
}

if sprite_index=basebulb_spr and timer2<room_speed*0.9
{timer2 += 0.1}

if sprite_index=basebulb_spr and timer2>=room_speed*0.9{
    timer2=0
    image_index=0
    sprite_index=bulbup_spr
    }

if sprite_index=bulbup_spr and image_index > 11{
image_speed=0.16
sprite_index=imgidle
cadencia=0.6
//alarm[0]=room_speed*random_range(minrange,maxrange)*cadencia
}

/* */
/*  */
