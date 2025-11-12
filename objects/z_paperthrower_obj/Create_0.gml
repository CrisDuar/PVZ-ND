event_inherited();
vida=140
maxhp = 140
brazospr=brazopapsho_spr
waitsprite=choose(papshoquiet_spr,papshoquiet2_spr)
hurtsnd=boxhurt_snd
hurt2snd=boxhurt_snd
name_esp="Zombi Lanzapapel"
name_eng="Paper Thrower Zombie"
handspr=1
bodyspr=papshoded_spr
headspr=1

disparando=false
shooted=false
distancia=irandom_range(922,1020)//905-random(64)
cubrirse=false
obj=0

if room=iplant_rm or control_obj.multijugador==true{
    distancia=trazo_obj.x+30+random(10)
}

