event_inherited();
//actualizar el texto
lvl_es="Supervivencia (jugador) - Banderas: " + string(survprogress)
lvl_en="Survival (player) - Flags: " + string(survprogress)


//retos
if saveourseeds==true{
saveourseeds=false
instance_create(416,160,p1)
instance_create(416,576,p2)
instance_create(368,80,saveseedcasilla_obj)
instance_create(368,496,saveseedcasilla_obj)
}

if sunmachine==true{control_obj.cansun=false; instance_create(418,368,sunmachine_obj); sunmachine=false}
if limitlawn==true {with(trazo_obj){x=806};  limitlawn=false}

//Prize
if h>=fn
and t2<=0
and global.gameover=false
and global.nivelterminado=false
and timercheck=false
and !instance_exists(eatfather_obj)
and infinite=false{
    timercheck=true
}

if timercheck==true timer--

if timer<=0{
    survival_next_game()
    survival_save("player_surv.ini")
    timercheck=false
    timer=room_speed*3
}

