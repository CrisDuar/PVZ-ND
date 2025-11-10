event_inherited();
peso=-15

waitsprite=beachballpreview_spr
name_esp="Bola de playa"
name_eng="Beach ball"

vida=50
maxhp=50

depth=-y-40;

w=false
canpoison=false
canfreeze=false
c_frost=c_white
point=y+86
fase=0
angle=image_angle

vspeed=irandom_range(-7,-4)
if x<720 hspeed=irandom_range(2,3)
if x>=720 hspeed=irandom_range(-2,-3)
num=choose(0.5,1)
image_speed=0

morpho_a = false

