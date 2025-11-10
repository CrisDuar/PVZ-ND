event_inherited();
yy=30
select=44
sprite=setatoxica_spr
plant=setatoxica_obj
cost=25
timer=60

//Recarga al empezar el nivel en el modo versus?
if control_obj.multijugador==true{
    recargstart=false
    cost=75
}

