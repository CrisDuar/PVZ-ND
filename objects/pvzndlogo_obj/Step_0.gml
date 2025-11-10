t = (t + increment) mod 360;
shift = amplitude * dsin(t);

//clone the movement from the object's speed and direction
xx += hspeed;
yy += vspeed;

//apply the shift
x = xx + lengthdir_x(shift, direction + 90);
y = yy + lengthdir_y(shift, direction + 90);

