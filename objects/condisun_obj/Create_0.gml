event_inherited();
rule_relocate=true
tp = 0.0025

rule_linear=true

x3 = x
y3 = y+360

image_alpha=0
costo=choose(-50,-25,25,50,75,100)

spr1=condisun_spr
spr2=condisun2_spr
lph=0
t_dis=300
if costo<=0 snd=sunless_snd

/*desapareciendo=false
bajar=false
image_speed=0
image_alpha=0
countdis=room_speed*8
countbaj=room_speed*3+random(room_speed*4)
vspeed=0.8
snd=sol_snd
costo=choose(-50,-25,0,50,75,100,125)

if costo<=0{snd=sunless_snd}

/* */
/*  */
