/// @description COMMON PLANT
event_inherited();
image_index=0
timer=room_speed
act=false
obj=self//pear to connect
obj2=self//self
inst = noone//pear to connect temporal
con=false

connecting=false
look_for_connect=false
canpress=false
con2me=false

random_number=irandom(200)



vida=1000
maxhp=1000

///RAYOS
xx=x+30
yy=y-35
objx=xx
objy=yy
alarm[1]=1
trail=0
//array_posX[0]=0
//array_posY[0]=0
//array_rotation[0]=0
array_posX=ds_list_create()
array_posY=ds_list_create()
array_rotation=ds_list_create()
dv_ = 0
dz_ = 0
direction_ = 0
lenght_ = 0
lx_ = 0
ly_ = 0

