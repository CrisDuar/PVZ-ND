event_inherited();
vida=200
maxhp = 200
waitsprite=zombidoctor0_spr

name_esp="Zombi Doctor"
name_eng="Zombie Doctor"

explo=false
throwed=false
t=-1
max_t = 15*60
handspr=1
bodyspr=zombidoctorded_spr
headspr=11

t=random_range(6,7)*60
amount=3

if (control_obj.multijugador == true or room = izombie_rm){
    amount = 1
    max_t = 5*60
}

