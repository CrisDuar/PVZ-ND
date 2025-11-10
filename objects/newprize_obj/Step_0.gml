event_inherited();
depth=-999
image_alpha+=0.08

if variable_global_exists(prizevar){
    if variable_global_get(prizevar)>=lvl and replay==false{
    replay=true
    sprite_index=bolsa_monedas_spr
    money=round(money/2)
    plantroom=global.selectionRoom
    }
}

