event_inherited();
spr=plasma_spr
msk=plasma_spr
snd = [plasma_snd, plasma2_snd, plasma3_snd, plasma4_snd];
broke=-1
particle=-1

spd=0
spd_max = 10;
spd_min = 10;
acc = 0.25;
dmg_zom = 100;

image_alpha=0
angle=0


_xscale=1.2
_yscale=1.2

on_collision = function(){
	instance_create_layer(x,y,"Instances",plasmaexp_obj);
}