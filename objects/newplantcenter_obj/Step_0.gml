/*if image_xscale and image_yscale < 1.5{
image_xscale+=0.005
image_yscale+=0.005
}*/
direction = point_direction(x,y,x_final,y_final);
speed = (point_distance(x,y,x_final,y_final)/50)*dlt;

transparencia1 +=0.004*dlt

if speed = 0{
addEscala-=0.0002
}
escala+=addEscala*dlt

image_xscale=escala
image_yscale=escala

if (!audio_is_playing(newplant_snd) and !audio_is_playing(finalprize_snd))
or force==true{
image_alpha-=0.06*dlt
logros_obj.levelpassed = true;
}

if image_alpha<=0{
    save_game()
    room_goto(plantroom)
}

/* */
/*  */
