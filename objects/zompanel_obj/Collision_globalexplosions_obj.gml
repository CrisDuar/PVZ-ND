event_inherited();
if drophelmet==false{
    drop(x-25, y-92+30*water, helmet1_spr, 0, true, image_blend, y, depth-10)
}

if (dropmachine=false){
   with(instance_create(x-60,y,zomsunmachine_obj)){
       water=other.water
       depth=other.depth-5
       vida=0
   }
}

