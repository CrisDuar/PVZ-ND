event_inherited();
spr = spike_spr
mask = spike_spr
rule_outside=true
spd=5
spd_max=5
hspd=0
hspd_max=0
broke=-1
particle=-1

obj=0
n=1

if instance_exists(gravedetect_obj){obj=instance_nearest(x,y,gravedetect_obj)}
if instance_exists(eatfather_obj){obj=instance_nearest(x,y,eatfather_obj)}

if instance_exists(obj) and control_obj.multijugador==true{
    if obj.object_index==zombiediana_obj and instance_exists(gravedetect_obj){
        obj=instance_nearest(x,y,gravedetect_obj)
    }
}



