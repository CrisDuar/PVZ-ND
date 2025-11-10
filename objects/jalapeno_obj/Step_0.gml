event_inherited();
//depth=-y+80
image_xscale+=0.002
image_yscale+=0.002

if image_index>=image_number/2{img=0}

if timer<=0{
    if explo==false{
        explo=true
        with(instance_create(x,y-20,powie_obj)){sprite_index=swosh_spr}
        
        if disfraz==0{create_explosion(678,y,0,9.5,0.6,jalapeno_snd); instance_create(x,y,jalapenoarea_obj)}
        else if disfraz==1{create_explosion(x,300,0,1.2,7,jalapeno_snd); with(instance_create(x,y,jalapenoarea_obj)){t=1}}
    }
    vida = 0;
    
}else{
    timer-=1
}

