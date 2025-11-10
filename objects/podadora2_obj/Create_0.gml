event_inherited();
valor=50
sprite=billete_spr
=choose(127,224,326,434,539);

lanes = array_create(6)
obj_z = array_create(6)
checker=180

for(var i=0; i<6; i++){
    lanes[i] = get_closest_row(170+95*i)
}

y=lanes[2]
yy=y

