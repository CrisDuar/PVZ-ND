event_inherited();
image_speed=0.22
image_index=random_range(0,18)
vida = 5000
maxhp = 5000
water=true
imagespeed2=0.22
peso = 1000
vfx_ingame=0
vfx=false//Cinemática inicial
bossready=false//Empezar la partida
die=false//Animación de fallecer por parte del boss
die_burned=false
prize=false

maxcall=800//Tiempo entre los ataques
atackcall=0//Timer de los ataques

is_attacking=false
atacktype=0//Tipo de ataque escogido
atackdone=false//El ataque fue realizado?
atacknumber=0//Número de ataque en el que va
atack_frame=0//En qué frame hace el ataque

state=0//Estado en el que está

fase=0//Fase en la que está
fasehp1=3000//Vida necesaria para que entre en dicha fase
fasehp2=1200

if room=levelhard2_6_rm{
    fasehp1=3500
    fasehp2=1500
}

walkspeed=0
caneat=false
canhand=false
tradie=false
alarm[4]=room_speed*irandom_range(12,14)

y=get_closest_row(y)

