if break_parabol=false{
    event_inherited()
}

depth=-998

if t<1{
    if (image_xscale < scale) image_xscale+=0.05
    if (image_yscale < scale) image_yscale+=0.05
    if (image_alpha < 1) image_alpha+=0.05
    
    //Reubicarse
    if (x<230 or x>1024) and rule_relocate==true{
        var temp_x = irandom_range(230,1024)
        x1 = temp_x
        x3 = temp_x
    }
}
//girar
image_angle+=1

//Recolectado en el versus
var obj = plantmulti_obj;
if zom==true obj = zombimulti_obj;

if place_meeting(x,y,obj){
    event_user(1)
}

//moverse hacia el cursor (VS)
if distance_to_object(obj)<100{
    break_parabol=true
    move_towards_point(obj.x,obj.y,3)
}else{
    speed=0
}

//desaparecer en los niveles en los que no debería haber sol
if instance_exists(ctrlcinta1_obj) instance_destroy();

//nivelcompletado
if (audio_is_playing(newplant_snd) or audio_is_playing(finalprize_snd)){
    event_user(1)
}

if global.gameover==true{
    instance_destroy();
}

