//To edit level
pt=1//Grace time
fn=16//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel 24"
lvl_en="Level 24"

//To edit prize
sprite=bolsa_monedas_spr//prize sprite
prizevar="niveles"//prize variable to modify
lvl=25//level number
money=300//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=level2_sl_rm//what room go to after passing the level

zombie_preview(zombiestatua_obj,7)
horde_prcnt=0
wf[8]=1
wf[fn-1]=2


f[0,0] = array(zombiestatua_obj,a,3)

f[1,0] = array(zombiestatua_obj,a,4)

f[2,0] = array(zombiestatua_obj,a,5)

f[3,0] = array(zombiestatua_obj,a,4)

f[4,0] = array(zombiestatua_obj,a,3)

f[5,0] = array(zombiestatua_obj,a,4)

f[6,0] = array(zombiestatua_obj,a,3)

f[7,0] = array(zombiestatua_obj,a,2)

//wave 1
f[8,0] = array(zabanderado_obj,array(f3),1)
f[8,1] = array(zombiestatua_obj,a,1)

f[9,0] = array(zombiestatua_obj,a,2)

f[10,0] = array(zombiestatua_obj,a,4)

f[11,0] = array(zombiestatua_obj,a,4)

f[12,0] = array(zombiestatua_obj,a,3)


f[13,0] = array(zombiestatua_obj,a,4)

f[14,0] = array(zombiestatua_obj,a,5)

//final wave
f[15,0] = array(zabanderadohard_obj,array(f3),1)
f[15,1] = array(zombiestatua_obj,a,6)