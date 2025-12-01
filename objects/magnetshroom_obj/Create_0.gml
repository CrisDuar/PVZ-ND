event_inherited();
cancoffee=true
sleep=false
if (control_obj.daytime != 2) sleep = true;

state=0
t=0
sprite_shield=0
objxx=0
objyy=0

area=225

depth_control=instance_create(x,y,void_obj)

spr_idle=magnet1_spr
spr_atk=magnet2_spr
spr_rest=magnet3_spr
spr_sleep=magnet4_spr

magnet_t = 30


