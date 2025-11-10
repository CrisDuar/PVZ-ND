event_inherited();
vida=150
maxhp = 150
waitsprite=zombicajita0_spr

name_esp="Zombi con Cajita"
name_eng="Jack-in-the-Box Zombie"

sound=false
explo=false
s=-1
t=-1
handspr=10
bodyspr=zombicajitaded_spr
headspr=10
walkspeed=-0.5

if control_obj.multijugador or room==izombie_rm{
    t=30
}else{
    var a = irandom(100)
    
    if a>90 t=random_range(5,7)*60 else t=random_range(12,18)*60
}

