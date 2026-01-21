event_inherited();
/*image_speed=0.16
zom=false
disparando=false
canspawn=false
startsun=false

if global.iniciogame=true 
and (control_obj.multijugador==true or room==izombie_rm){
startsun=true
alarm[1]=room_speed*5
}

vida=500
*/
vida=300
canspawn=false

local_img=0.16
t_sun=30*60
t_initsun=5
t=60*(random_range(t_initsun,t_initsun+3))

sun=false
sun_frame=11

spr_idle=tumbamulti1_spr
spr_prod=tumbamulti2_spr

///rules
can_tired=false

//vs conveyor
tvs=irandom_range(45,75)*60

zominventory = [z_zombie_obj,z_headbox_obj,z_conehead_obj]
/* */
/*  */
