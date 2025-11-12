//To edit level
pt=6//Grace time
fn=15//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel 26"
lvl_en="Level 26"

//To edit prize
sprite=bolsa_monedas_spr//prize sprite
prizevar="niveles"//prize variable to modify
lvl=27//level number
money=300//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=level2_sl_rm//what room go to after passing the level
horde_prcnt=0
zombie_preview(z_allstar_oj,3)
zombie_preview(z_polevaulter_obj,3)

wf[8]=1
wf[fn-1]=2

a=array(f1,f3,f5)

f[0,0] = array(z_allstar_oj,a,1)

f[1,0] = array(z_allstar_oj,a,1)

f[2,0] = array(z_allstar_oj,a,1)
f[2,1] = array(z_polevaulter_obj,a,1)

f[3,0] = array(z_allstar_oj,a,1)
f[3,1] = array(z_polevaulter_obj,a,1)

f[4,0] = array(z_allstar_oj,a,2)

f[5,0] = array(z_polevaulter_obj,a,2)

f[6,0] = array(z_allstar_oj,a,2)
f[6,1] = array(z_polevaulter_obj,a,1)

f[7,0] = array(z_allstar_oj,a,1)

//wave 1
f[8,0] = array(z_flag_obj,array(f3),1)
f[8,1] = array(z_allstar_oj,a,2)
f[8,2] = array(z_polevaulter_obj,a,2)

f[9,0] = array(z_allstar_oj,a,1)
f[9,1] = array(z_polevaulter_obj,a,1)

f[10,0] = array(z_allstar_oj,a,2)

f[11,0] = array(z_polevaulter_obj,a,2)
f[11,1] = array(z_allstar_oj,a,1)

f[12,0] = array(z_allstar_oj,a,3)
f[12,1] = array(z_polevaulter_obj,a,2)

f[13,0] = array(z_allstar_oj,a,1)
f[13,1] = array(z_polevaulter_obj,a,3)

//final wave
f[14,0] = array(z_flag_obj,array(f3),1)
f[14,1] = array(z_allstar_oj,a,3)
f[14,2] = array(z_polevaulter_obj,a,3)
