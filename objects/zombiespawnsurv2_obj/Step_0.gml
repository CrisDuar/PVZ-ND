event_inherited();
//actualizar el texto
lvl_es="Supervivencia (Robert) - Banderas: " + string(survprogress)
lvl_en="Survival (Robert) - Flags: " + string(survprogress)

//retos
if saveourseeds==true{
saveourseeds=false
instance_create(406,232,p1)
instance_create(406,525,p2)
with(instance_create(362,168,saveseedcasilla_obj)){image_yscale=0.85}
with(instance_create(362,459,saveseedcasilla_obj)){image_yscale=0.85}
}

if sunmachine==true{control_obj.cansun=false; instance_create(406,152,sunmachine_obj); instance_create(406,615,sunmachine_obj); sunmachine=false}
if limitlawn==true {with(trazo_obj){x=806}; limitlawn=false}
if israining==true {control_obj.rain=true; israining=false}

//Prize
if h>=fn
and t2<=0
and global.gameover=false
and global.nivelterminado=false
and timercheck=false
and instance_number(eatfather_obj)-instance_number(beachballdrop_obj)-instance_number(trashcan_obj)=0
and infinite=false{
    timercheck=true
}

if timercheck==true timer--

if timer<=0{
    survival_next_game_pool()
    survival_save("pool_surv.ini")
    timercheck=false
    timer=room_speed*3
}

