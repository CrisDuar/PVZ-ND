yy-=60
objy-=60

trail=clamp(round(point_distance(xx,yy,objx,objy)/10),2,round(point_distance(xx,yy,objx,objy)/10))

array_posX[0]=xx
array_posY[0]=yy
array_rotation[0]=point_direction(xx,yy,objx,objy)

for (var i = 1; i<trail; i++){
    dv_ = random_range(0,60)
    dz_ = point_direction(xx,yy,objx,objy)
    direction_ = random_range(dz_-dv_,dz_+dv_)
    lenght_ = random_range(1,20)
    lx_ = lengthdir_x(lenght_,direction_);
    ly_ = lengthdir_y(lenght_,direction_);

    array_posX[i]=array_posX[i-1] + lx_
    array_posY[i]=array_posY[i-1] + ly_
    array_rotation[i]=direction_
}

array_posX[array_length_1d(array_posX)-1]=objx
array_posY[array_length_1d(array_posY)-1]=objy
array_rotation[array_length_1d(array_rotation)-1]=point_direction(xx,yy,objx,objy)

alarm[2]=room_speed/12

