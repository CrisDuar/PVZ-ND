//To edit level
surprise_enabled=false
pt=3//Grace time
fn=31//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel 63"
lvl_en="Level 63"
//To edit prize
sprite=morfosetaslot_spr//prize sprite
prizevar="niveles"//prize variable to modify
lvl=64//level number
money=200//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=price_rm//what room go to after passing the level

horde_canfifty=false

zombie_preview(z_zombie_obj,2)

wf[15]=1
wf[fn-1]=1

a=array(f1,f2,f3,f4,f5)

f[0,0] = array(bowlinghead_obj,a,1)
f[1,0] = array(bowlinghead_obj,a,1)
f[2,0] = array(bowlinghead_obj,a,1)
f[3,0] = array(bowlinghead_obj,a,1)
f[4,0] = array(bowlinghead_obj,a,2)
f[5,0] = array(bowlinghead_obj,a,1)
f[6,0] = array(bowlinghead_obj,a,3)
f[7,0] = array(bowlinghead_obj,a,4)
f[8,0] = array(bowlinghead_obj,a,2)
f[9,0] = array(bowlinghead_obj,a,2)
f[10,0] = array(bowlinghead_obj,a,2)
f[11,0] = array(bowlinghead_obj,a,3)
f[12,0] = array(bowlinghead_obj,a,2)
f[13,0] = array(bowlinghead_obj,a,4)
f[14,0] = array(bowlinghead_obj,a,2)
//wave 2
f[15,0] = array(bowlinghead_obj,a,6)

f[16,0] = array(bowlinghead_obj,a,2)
f[17,0] = array(bowlinghead_obj,a,4)
f[18,0] = array(bowlinghead_obj,a,2)
f[19,0] = array(bowlinghead_obj,a,4)
f[20,0] = array(bowlinghead_obj,a,3)
f[21,0] = array(bowlinghead_obj,a,2)
f[22,0] = array(bowlinghead_obj,a,4)
f[23,0] = array(bowlinghead_obj,a,2)
f[24,0] = array(bowlinghead_obj,a,4)
f[25,0] = array(bowlinghead_obj,a,3)
f[26,0] = array(bowlinghead_obj,a,2)
f[27,0] = array(bowlinghead_obj,a,5)
f[28,0] = array(bowlinghead_obj,a,2)
f[29,0] = array(bowlinghead_obj,a,1)
//wave 2
f[30,0] = array(bowlinghead_obj,a,15)
