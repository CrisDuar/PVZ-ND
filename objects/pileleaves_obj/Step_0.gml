depth=-y+60

if image_alpha = 0.5{
    repeat(choose(3, 4, 2)){
        part_particles_create(control_obj.part, x + random_range(-20, 20), y - random(40), control_obj.p27, 1)
    }
}

if image_alpha<1 image_alpha+=0.05

if vida <=0{
    repeat(n_imps){
        with(instance_create(x + random_range(-40, 40),y ,imp_obj)){
            image_alpha = 0
        }    
    }
    
    instance_create(x,y-50,destroygrave_obj)
    instance_destroy();
}

if (collision_rectangle(305,284,1055,423,self,false,false) and __background_get( e__BG.Index, 0 )=poolday_bg) 
or (collision_rectangle(x-40,y,x-10,y,charco_obj,false,false))
{water=true}else{water=false}

