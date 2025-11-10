depth=-y-5

if vida>200{image_index=0}
else if vida>50{image_index=1}
else{image_index=2; part_particles_create(part, x+random_range(-5,5), y-30, p1, irandom_range(0,3)); shake=1; vida-=0.001}

if image_xscale>1 image_xscale-=0.05
if image_yscale<1 image_yscale+=0.05
if image_alpha<1 image_alpha+=0.05
if hspeed<0 hspeed+=0.05

if vida <=0{
    with(instance_create(x,y,sunmachinedmg_obj)){
        water=other.water
    }
    instance_destroy();
}

if (collision_rectangle(305,284,1055,423,self,false,false) and __background_get( e__BG.Index, 0 )=poolday_bg) 
or (collision_rectangle(x-40,y,x-10,y,charco_obj,false,false))
{water=true}else{water=false}

if t<maxt{
    t++
}else{
    t=0
    var _id = id
    
    repeat(2){
        if instance_exists(sol_flower_obj){
            audio_play_sound(sunless_snd,1,false)
            image_yscale=0.6
            image_xscale=1.4
            with(instance_nearest(x,y,sol_flower_obj)){
                with(instance_create(x,y,solmove_obj)){obj=_id; w=0}
                instance_destroy();
            }
        }
        
        if instance_exists(sol_obj){
            audio_play_sound(sunless_snd,1,false)
            image_yscale=0.6
            image_xscale=1.4
            with(instance_nearest(x,y,sol_obj)){
                with(instance_create(x,y,solmove_obj)){obj=_id; w=0}
                instance_destroy();
            }
        }
    }
}

