if version!=string(GM_version){
pool_generate_zom();
}

var prob = random(100)

//Crear zombis
zombie_preview(basic1,irandom_range(1,3))
zombie_preview(basic2,irandom_range(1,3))
zombie_preview(basic3,irandom_range(1,3))

zombie_preview(armor1,irandom_range(1,3))
zombie_preview(armor2,irandom_range(1,3))
zombie_preview(armor3,irandom_range(1,3))

zombie_preview(trick1,irandom_range(1,3))
zombie_preview(trick2,irandom_range(1,3))
zombie_preview(trick3,irandom_range(1,3))

/*---------------Actualizar el nivel--------------*/

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

if prob<50{
wf[7]=0
f[7,0] = array(armor3,a,irandom_range(2,3))
f[7,1] = array(trick2,a,irandom_range(1,3))
}else{
wf[7]=1
f[7,0] = array(flag,array(f3),1)
f[7,1] = array(basic2,a,irandom_range(2,3))
f[7,2] = array(choose(armor1,armor2),a,irandom_range(2,3))
f[7,3] = array(armor3,a,irandom_range(1,3))
f[7,4] = array(choose(trick1,trick2),a,irandom_range(1,2))
}

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
