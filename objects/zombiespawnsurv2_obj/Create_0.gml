event_inherited();
survival=true
record=0
survprogress=0
survtimecalc=0
dificultad=0
version="0"
lvl_es="Supervivencia (Robert)"
lvl_en="Survival (Robert)"
//crear zombis
alarm[1]=10

//desafios
saveourseeds=false
    p1=0
    p2=0
sunmachine=false
limitlawn=false
israining=false

timer=60*3
timercheck=false

//zombi básico
basic1=z_zombie_obj
basic2=z_duckytube_obj
basic3=z_headbox_obj

//zombi armadura
armor1=z_headbox_obj
armor2=z_conehead_obj
armor3=z_conehead_obj

//zombi truco
trick1=z_snorkel_obj
trick2=z_statue_obj
trick3=beachball_obj

//bandera
flag=z_flag_obj

//-------------------------------------
pt=12//Grace time
fn=12//number of waves
wf=array_create(fn)

/*----------------------------*/
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
/*------------------------------*/

wf[fn-1]=2

f[0,0] = array(basic1,b,1)

f[1,0] = array(basic2,b,1)

f[2,0] = array(basic1,b,1)
f[2,1] = array(basic2,b,1)

f[3,0] = array(basic2,a,2)

f[4,0] = array(armor1,a,irandom_range(1,2))
f[4,1] = array(armor2,a,irandom_range(1,2))

f[5,0] = array(armor2,a,irandom_range(1,3))
f[5,1] = array(trick1,a,irandom_range(1,3))

f[6,0] = array(trick1,a,3)
f[6,1] = array(armor3,a,2)

f[7,0] = array(armor3,a,irandom_range(2,3))
f[7,1] = array(trick2,a,irandom_range(1,3))

f[8,0] = array(armor3,a,3)
f[8,1] = array(armor2,a,2)

f[9,0] = array(trick2,a,2)
f[9,1] = array(trick3,a,irandom_range(0,3))

f[10,0] = array(basic3,a,irandom_range(2,3))
f[10,1] = array(armor3,a,3)
f[10,2] = array(trick3,a,irandom_range(1,2))

//final wave
f[11,0] = array(flag,array(f3),1)
f[11,1] = array(basic3,a,irandom_range(2,3))
f[11,2] = array(choose(armor1,armor2),a,irandom_range(3,3))
f[11,3] = array(armor3,a,irandom_range(2,3))
f[11,4] = array(choose(trick1,trick2),a,irandom_range(2,3))
f[11,5] = array(trick3,a,irandom_range(2,3))

//------------------------------------------------

/* */
/*  */
