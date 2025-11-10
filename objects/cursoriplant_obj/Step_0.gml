direction = point_direction(x,y,iaplant_obj.x+50,iaplant_obj.y+50);
speed = point_distance(x,y,iaplant_obj.x+50,iaplant_obj.y+50)/12.5;

if global.gameover=true
or global.nivelterminado=true{
instance_destroy();
}

