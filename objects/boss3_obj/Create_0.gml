event_inherited();
image_speed=0.22
image_index=random_range(0,18)
morpho_a = false
peso=20
vida = 10000
maxhp = 10000
hp_shield=maxhp
goback_tmr = 0
goback_hp = maxhp

st_eat=false

vfx_ingame=0
vfx=false//Cinemática inicial
bossready=false//Empezar la partida
die=false//Animación de fallecer por parte del boss
die_burned=false
prize=false

maxcall=600//Tiempo entre los ataques
atackcall=400//Timer de los ataques

is_attacking=0
atacktype=0//Tipo de ataque escogido
atackdone=false//El ataque fue realizado?
atacknumber=0//Número de ataque en el que va
atack_frame=0//En qué frame hace el ataque

state=0//Estado en el que está
walkspeed=0
//imagespeed1=0.15//eat

canhand=false
canpoison=false
tradie=false
alarm[4]=room_speed*irandom_range(12,14)

y=get_closest_row(y)
garlic_yy=y

///DARKNESS
dark_x=x
dark_lph=0
dark_time=0

dark_fase = 0
display_fase = 0
fase_up=false
canfase_up=0

plntrn_n = 0

//cajas
box_t = 0
box_max = 60*40

//die animation
die_col=255

