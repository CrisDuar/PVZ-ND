if (x < 300 || global.gameover){
    instance_create_layer(x, y, "Instances", destroygrave_obj);
    instance_destroy();
}

depth=-y-20

if image_alpha<1 {image_alpha+=0.05}
image_angle+=speed


//Pool
if (control_obj.stage == 3 
&& collision_rectangle(305,334,1055,403,self,false,false)
&& distance_to_object(nenufar_obj)>20){
	get_sunk();	
}

if (y < control_obj.lim_top || y > control_obj.lim_bottom){
    do_bounce();	
}

if (bounce_t > 0) bounce_t--;