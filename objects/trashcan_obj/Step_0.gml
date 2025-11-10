depth=-y+60

if vida<=700{image_index=0}
if vida<=400{image_index=1}
if vida<=100{image_index=2}

if image_xscale>1 image_xscale-=0.05
if image_yscale<1 image_yscale+=0.05
if image_alpha<1 image_alpha+=0.05

if vida <=0{
    repeat(4){
        drop(x+random_range(-10,10),y-60+random_range(-10,10)+30*water,trashpart_spr,irandom(5),false,c_white,y,-y-10)
    }
    
    audio_play_sound(trashcan2_snd,1,false)
    instance_create(x,y-50,destroygrave_obj)
    instance_destroy();
}

if (collision_rectangle(305,284,1055,423,self,false,false) and __background_get( e__BG.Index, 0 )=poolday_bg) 
or (collision_rectangle(x-40,y,x-10,y,charco_obj,false,false))
{water=true}else{water=false}

