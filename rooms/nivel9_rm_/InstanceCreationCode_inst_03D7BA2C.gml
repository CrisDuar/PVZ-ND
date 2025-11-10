//To edit level
pt=5//Grace time
fn=15//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel 9"
lvl_en="Level 9"

//To edit prize
sprite=menubulb1_spr//prize sprite
prizevar="niveles"//prize variable to modify
lvl=10//level number
money=120//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=price_rm//what room go to after passing the level
horde_prcnt = 0.2
zombie_preview(zombie1_obj,2)
zombie_preview(zombieheadbox_obj,2)
zombie_preview(zombiestatua_obj,3)
zombie_preview(zombiecarecono_obj,3)
zombie_preview(zombiedoor_obj,1)

wf[8]=1
wf[fn-1]=2


f[0,0] = array(zombie1_obj,a,1)

f[1,0] = array(zombie1_obj,a,1)
f[1,1] = array(zombieheadbox_obj,a,1)

f[2,0] = array(zombieheadbox_obj,a,1)
f[2,1] = array(zombiestatua_obj,a,1)
f[2,2] = array(zombie1_obj,a,1)

f[3,0] = array(zombiecarecono_obj,a,2)
f[3,1] = array(zombieheadbox_obj,a,1)

f[4,0] = array(zombiecarecono_obj,a,1)
f[4,1] = array(zombiestatua_obj,a,2)
f[4,2] = array(zombie1_obj,a,3)

f[5,0] = array(zombieheadbox_obj,a,2)
f[5,1] = array(zombiestatua_obj,a,2)

f[6,0] = array(zombie1_obj,a,3)
f[6,1] = array(zombiedoor_obj,a,1)
f[6,2] = array(zombiecarecono_obj,a,1)

f[7,0] = array(zombie1_obj,a,2)
f[7,1] = array(zombiecarecono_obj,a,2)

//wave 1
f[8,0] = array(zombieheadbox_obj,a,3)
f[8,1] = array(zabanderado_obj,array(f3),1)
f[8,2] = array(zombiecarecono_obj,a,2)
f[8,3] = array(zombie1_obj,a,4)
f[8,4] = array(zombiestatua_obj,a,2)
f[8,5] = array(zombiedoor_obj,a,1)

f[9,0] = array(zombiecarecono_obj,a,3)
f[9,1] = array(zombieheadbox_obj,a,1)

f[10,0] = array(zombie1_obj,a,1)
f[10,1] = array(zombiedoor_obj,a,2)

f[11,0] = array(zombie1_obj,a,3)
f[11,1] = array(zombiecarecono_obj,a,2)

f[12,0] = array(zombieheadbox_obj,a,2)
f[12,1] = array(zombiecarecono_obj,a,2)
f[12,2] = array(zombiestatua_obj,a,3)

f[13,0] = array(zombieheadbox_obj,a,1)
f[13,1] = array(zombiecarecono_obj,a,2)

//final wave
f[14,0] = array(zombieheadbox_obj,a,5)
f[14,1] = array(zabanderado_obj,array(f3),1)
f[14,2] = array(zombiedoor_obj,a,2)
f[14,3] = array(zombiecarecono_obj,a,5)
f[14,4] = array(zombie1_obj,a,4)
f[14,5] = array(zombiestatua_obj,a,3)