x_final=finalobj.x
y_final=finalobj.y
finalobj.lock = lock;

direction = point_direction(x,y,x_final,y_final);
speed = point_distance(x,y,x_final,y_final)/10;

if desaparecer=true{
    image_alpha-=0.25
    
    if image_alpha<=0{
        instance_destroy();
    }
}

if global.playerReady=true{
    with(finalobj){
        sprite_index=other.sprite_index
        costume=other.costume
        done=true
    }
    instance_destroy();
}

if speed<1{
    depth = -y -1000000
}else{
    depth = -y -3000000
}

