//To edit level
surprise_enabled=false
pt=2//Grace time
fn=12//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel 40"
lvl_en="Level 40"

//To edit prize
sprite=bolsa_monedas_spr//prize sprite
prizevar="niveles"//prize variable to modify
lvl=41//level number
money=500//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=level3_sl_rm//what room go to after passing the level
horde_ttl_hp=0
//Rows
f1=152
f2=236
f3=339
f4=422
f5=527
f6=615

a=array(f1,f2,f3,f4,f5,f6)
w=array(f3,f4)
b=array(f1,f2,f5,f6)

zombie_preview(z_polevaulter_obj,2)
zombie_preview(z_allstar_oj,2)
zombie_preview(z_trashcan_obj,3)

wf[6]=1
wf[fn-1]=2


f[0,0] = array(z_polevaulter_obj,a,1)

f[1,0] = array(z_polevaulter_obj,w,2)

f[2,0] = array(z_trashcan_obj,a,2)
f[2,1] = array(z_polevaulter_obj,a,3)

f[3,0] = array(z_polevaulter_obj,a,4)
f[3,1] = array(z_trashcan_obj,w,2)

f[4,0] = array(z_trashcan_obj,b,3)

f[5,0] = array(z_trashcan_obj,a,6)

//wave 1
f[6,0] = array(z_flag_obj,array(f3,f4),1)
f[6,1] = array(z_trashcan_obj,a,4)
f[6,2] = array(z_allstar_oj,a,2)
f[6,3] = array(z_polevaulter_obj,b,5)

f[7,0] = array(z_trashcan_obj,a,1)
f[7,1] = array(z_allstar_oj,a,2)

f[8,0] = array(z_trashcan_obj,a,2)
f[8,1] = array(z_allstar_oj,a,2)
f[8,2] = array(z_polevaulter_obj,a,3)

f[9,0] = array(z_allstar_oj,a,3)
f[9,1] = array(z_polevaulter_obj,a,3)

f[10,0] = array(z_trashcan_obj,a,3)
f[10,1] = array(z_polevaulter_obj,a,4)

//wave 1
f[11,0] = array(z_flag_obj,array(f3,f4),1)
f[11,1] = array(z_trashcan_obj,a,4)
f[11,2] = array(z_allstar_oj,a,5)
f[11,3] = array(z_polevaulter_obj,a,3)
