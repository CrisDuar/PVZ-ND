event_inherited();
peso = 30
vida = 300
maxhp = 300
soltarproteccion = true;

shake=0
destroyself=false
localkami=false

if control_obj.kamistatues==false{
    spawnzombie = 0//random_range(0,1)
}else{
    localkami=true
    spawnzombie=1
}

name_esp="Estatua Zombi"
name_eng="Statue Zombie"

warn_sfx_frame=random_range(0,15)
warn_img=random_range(0,1.5)
warn_spd=random_range(0.13,0.19)
warn_rush=false
warn_sfx=false
warn=false

morpho_a = false
c_frost=c_white
congelado=true
canspeed=false
waitsprite=estatua1_spr

canfreeze=false
canhand=false
tradie=false
caneat=false
canpoison=false

//Auto-destroy
if control_obj.multijugador or room==izombie_rm{
    vida = 600
    maxhp = 600
}else{
    alarm[1]=60*35
}

