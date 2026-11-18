event_inherited();
image_index = 0;
image_speed=0.16
vida=100
sleep=false
cancoffee=true
canpoison=false

poison=false
poisontime=0
particle=0
disparando=false
timer=60

spr_idle=healershroom1_spr
spr_atk=healershroom2_spr
spr_sleep=healershroom3_spr

t_atk=60*2
t_atk_ttl=7

sleep_time = 60*5
sleep_debuff = false

if (control_obj.daytime != 2){
    sleep = true;
    sleep_debuff = true;
}

z_list = ds_list_create()
z_num = 0;