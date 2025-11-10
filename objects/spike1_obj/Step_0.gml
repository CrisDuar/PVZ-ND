event_inherited();
if instance_exists(obj){
    if obj.mask_index==nocol_spr or obj.mask_index==ghostnohit_spr{
        n++
        obj=instance_nth_nearest(x,y,eatfather_obj,n)
    }else{
        direction-=sin(degtorad(direction-point_direction(x,y,obj.x, obj.y-20)))*8;
        _angle=direction
    }
}

