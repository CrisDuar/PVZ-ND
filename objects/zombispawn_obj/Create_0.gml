//Gameplay
surprise_attack=false
surprise_timer=3*60
surprise_enabled=true
//To edit level

survival=false//is this a survival spawner?
surv_type = -1
pt=12//Grace time
fn=8//number of waves
infinite=false//Is an infinite level?
infinite_loop = 3 //Wave where the level loops
progressbar=true//show progress bar? 
onlyname=false//show only the level name?
lvl_es="Nivel"
lvl_en="Level"
lvl_zh="关卡"

//To edit prize
sprite=menusun1_spr//prize sprite
prizevar="niveles"//prize variable to modify
lvl=1//level number
money=100//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=level1_sl_rm//what room go to after passing the level
update_progress = true;

//---------------------------------------------
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
global.hordafinal=false//is final wave? (it changes the music)
h=0//waves in-game
f=0//waves info(array)
t=60//timer
t2=0//suspense_snd timer
checkt2=false//check to play suspense_snd
started=false//If level has started
bar=h//bar in-game
xx=0
yy=0//prize position

//WAVE HEALTH
horde_hp=0
horde_ttl_hp=0
horde_update=60
horde_canupdate=false
horde_wait=0
horde_prcnt = 0.4
horde_canfifty = true
zom_amt = 0

//Rows


f1=166
f2=267
f3=370
f4=472
f5=578
f6=578

rows_arr = [f1,f2,f3,f4,f5];

lf=0 //last row?

f_list = ds_list_create(); //last row list?
ref_list =[f1,f2,f3,f4,f5]

a=[f1,f2,f3,f4,f5]


//for bushes
bush_zombies = array(z_imp_obj,z_zombie_obj,z_headbox_obj,z_conehead_obj,z_screendoor_obj)

/*Example
wf[fn-1]=2

a=array(f3)

f[0,0] = array(zombie1_obj,a,1)

f[1,0] = array(zombie1_obj,a,1)

f[2,0] = array(zombie1_obj,a,2)

f[3,0] = array(zombie1_obj,a,3)

//final wave
f[4,0] = array(zombie1_obj,a,4)
f[4,1] = array(zabanderado_obj,a,1)