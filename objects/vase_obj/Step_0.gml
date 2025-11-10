depth=-y+60
y=get_closest_row(y);
x=instance_nearest(x,y,pastoinv_obj).x

if loot!=noone{
    if object_get_parent(loot) = eatfather_obj
    or object_get_parent(loot) = obstaclezombie_obj{
        loottype=0
    }else if object_get_parent(loot) = menuplants_obj{
        loottype=1
    }
}

if image_xscale>1 image_xscale-=0.05
if image_yscale<1 image_yscale+=0.05
if image_alpha<1 image_alpha+=0.05

if collision_rectangle(x-110,y-140,x+110,y+90,plantern_obj,false,false){
    if alpha<1 alpha+=0.05
}else{
    if alpha>0 alpha-=0.05
}

if (collision_rectangle(305,284,1055,423,self,false,false) and __background_get( e__BG.Index, 0 )=poolday_bg) 
or (collision_rectangle(x-40,y,x-10,y,charco_obj,false,false))
{water=true}

spr = object_get_sprite(loot)

