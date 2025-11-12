event_inherited();
vida = 500
maxhp = 500
hurtsnd=conohurt_snd
hurt2snd=conohurt_snd
waitsprite=futbolzombi_spr
walkspeed=-0.55
imagespeed2=0.185
//canhand=false
bodyspr=futbolded_spr
handspr=8
obj=0
name_esp="Zombi Futbolista"
name_eng="Zombie All-Star"

if room!=nivel40_rm{
    alarm[0]=random_range(0.25,1)*room_speed
}

