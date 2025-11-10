part=part_system_create()
part_system_depth(part, -y+21);
p1=part_type_create()

part_type_sprite(p1,firepart_spr,0,0,1);
part_type_size(p1,0.25,1.25,-0.005,0);
part_type_orientation(p1,0,360,0,0,0);
part_type_color2(p1,c_orange,c_red);
part_type_alpha3(p1,1,1,0);
part_type_blend(p1,1);
part_type_direction(p1,85,125,0,1);
part_type_speed(p1,0.25,2,0,0);
part_type_life(p1,20,35);
part_system_automatic_draw(part,false)

grass=0
unitcost=""
unitname_es=""
unitname_en=""

descrip_es=array("","")
descrip_en=array("","")
unitsprite=0

surf=-1
xx=916
yy=345
up=0
sine_yy=0
checkdraw=1088

subimage=0
imagespeed=0
maximage=0

scroll=0
dy=0
drag=0
limit=0
draggin=false
global.almanacpage=0
/*
load_almanac
sep=290
w=15
cutoff=0
timer=0

/* */
/*  */
