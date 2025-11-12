event_inherited();
soltarproteccion=true
waitsprite=buzoidle_spr
walkspeed=-0.4
imagespeed2=0.17
handspr=2
bodyspr=buzoded_spr
t=true

headspr=7

name_esp="Zombi Buzo"
name_eng="Snorkel Zombie"

if (room = iplant_rm) and (y != zombispawn_obj.f3 and y != zombispawn_obj.f4) and (__background_get( e__BG.Index, 0 )=poolday_bg or __background_get( e__BG.Index, 0 )=poolsunset_bg or __background_get( e__BG.Index, 0 )=poolnight_bg){
    
    y = choose(zombispawn_obj.f3, zombispawn_obj.f4)
}

