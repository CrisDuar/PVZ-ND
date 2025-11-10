event_inherited();
vida=100

local_img=0.16
t_sun=30*60
t_initsun=5
t=60*(random_range(t_initsun,t_initsun+3))

sun=false
sun_frame=10

spr_idle=sunflower_spr
spr_prod1=sunflowersun_spr
spr_prod2=sunflowersun2_spr
spr_sleep=sunflowersleep_spr

spr_prod=spr_prod1

///rules
can_tired=false
can_sprite=true//Use the sprite system or not

//boost=false
/*
if control_obj.night=true{
    sprite_index=sunflowersleep_spr
    sleep=true;
    tiredtime=10;
    img=0.12
}
*/

/* */
/*  */
