/*var pl = irandom(100)

if pl>=25{obj = instance_nth_nearest(x,y,eatfather_obj,2)}
else{obj = instance_nearest(x-random(200),y+choose(-100,0,100),typeplant_obj)}
*/
obj = noone

for(var i=1; i <= instance_number(eatfather_obj); i++){
    with(instance_nth_nearest(x,y,eatfather_obj,i)){
        if object_index!=zombiemago_obj 
        and object_index!=zombiediana_obj 
        and object_index!=caja_obj
        and object_index!=trashcan_obj
        and object_index!=zomsunmachine_obj
        and object_index!=boss3_obj
        and vida<=other.maxhp{
            other.obj=id
            break;
        }
    }
}

if instance_exists(obj){//being a zombie
    state=1
    type=0
    image_index=0
}else{//no zombies at all? choosing a plant
    obj = instance_nearest(x-random(200),y+choose(-100,0,100),typeplant_obj)
    if instance_exists(obj){//being a plant
        state=1
        type=1
        image_index=0
    }else{//try again
        obj = instance_nearest(x-random(200),y+choose(-100,0,100),typeplant_obj)
        if instance_exists(obj){//being a plant again
            state=1
            type=1
            image_index=0
        }
    }
}

/* */
/*  */
