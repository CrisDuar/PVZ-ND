event_inherited();
hurtsnd=conohurt_snd
hurt2snd=conohurt_snd

vida = 600
maxhp = 600
puertavida = 300
maxhp_door = 300
handspr=12
bodyspr=zomcopded_spr

waitsprite=zomcopidle_spr
name_esp="Zombi Antidisturbios"
name_eng="Riot Police Zombie"

state = 0//En qué estado está?
drophelmet=false//Soltó el casco?
dropdoor=false//soltó la puerta?
t = irandom_range(60*15,60*20)//Timer para que tire la bomba
time = 60*30 //Cada cuanto tira la bomba de humo
bomb = false//Crear la bomba una única vez

