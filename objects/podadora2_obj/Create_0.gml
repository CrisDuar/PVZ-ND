event_inherited();
valor=150
sprite=billete_spr

lanes = array_create(6)
obj_z = array_create(6)
checker=180

for(var i=0; i<6; i++){
    lanes[i] = get_closest_row(170+95*i)
}

y=lanes[2]
yy=y

