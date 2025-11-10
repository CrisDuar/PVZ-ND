image_alpha=0.01
global.nivelterminado=true
global.zombieswin=false
vspeed=-3
hspeed=-1.2
animacion=true

with(instance_create(x,y-52,flecha_obj))
{hspeed=other.hspeed ; vspeed=other.vspeed}

