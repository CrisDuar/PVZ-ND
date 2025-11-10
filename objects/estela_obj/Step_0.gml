/*if image_xscale and image_yscale < 1.5{
image_xscale+=0.005
image_yscale+=0.005
}*/
direction = point_direction(x,y,x_final,y_final);
speed = point_distance(x,y,x_final,y_final)/50;

if speed = 0{
addEscala-=0.0002
}
escala+=addEscala

image_xscale=escala*1.5
image_yscale=escala*1.5
image_angle+=escala
image_alpha=escala-1

if !audio_is_playing(newplant_snd){
image_alpha-=0.1
}

/* */
/*  */
