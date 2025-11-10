image_alpha=0.01
vspeed=-3
animacion=true
global.nivelterminado=true

if x>=336{hspeed=-1.2}else{hspeed=1.2}

with(instance_create(x,y-67,flecha_obj))
{hspeed=other.hspeed ; vspeed=other.vspeed}

