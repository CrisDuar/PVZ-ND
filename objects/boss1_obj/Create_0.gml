event_inherited();
image_speed=0.22
image_index=random_range(0,18)
vida = 5000
maxhp = 5000
peso = 1000
vfx=false//Cinemática inicial
bossready=false//Empezar la partida
die=false//Animación de fallecer por parte del boss

maxcall=720//Tiempo entre los ataques
atackcall=0//Timer de los ataques

is_attacking=false
atacktype=0//Tipo de ataque escogido
atackdone=false//El ataque fue realizado?
atacknumber=0//Número de ataque en el que va

state=0//Estado en el que está

fase=0//Fase en la que está
fasehp1=2500//Vida necesaria para que entre en dicha fase
fasehp2=800

if room=levelhard2_6_rm{
    fasehp1=3500
    fasehp2=1500
}

walkspeed=0
imagespeed2=0.22
caneat=false
canhand=false
tradie=false
alarm[4]=room_speed*irandom_range(12,14)

y=get_closest_row(y)

