event_inherited();

if collision_rectangle(x-90,y-90,x+90,y+90,eatfather_obj,false,false){
    if image_speed<0.2 then image_speed+=0.001
    
    if t>0{
        t--
    }else{
        t=60
        with(eatfather_obj){
            if collision_rectangle(other.x-90,other.y-90,other.x+90,other.y+90,self,false,false){
                gooptime=0
                vida = clamp(vida + 5,0,maxhp)
                part_particles_create(control_obj.part, x-random_range(-20,20), y-random(90), control_obj.p9, 1);
            }
        }
    }
}else{
    if image_speed>0 then image_speed-= 0.001
}

var _npart = image_speed*10

if (global.videoq <= 1) {_npart = image_speed*5}

part_particles_create(control_obj.part, x-random_range(-12,12), y-45, control_obj.p8, _npart);

