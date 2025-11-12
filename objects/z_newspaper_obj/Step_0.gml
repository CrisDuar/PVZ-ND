event_inherited();
//velocidad
switch(state){
    case 0: 
        walkspeed=-0.18
        //caneat=true
        
        imagespeed1=0.17//0
        imagespeed2=0.2//0
        
        if puertavida>25{
            if comiendo==false{
                sprite_index=lector1_spr
            }else{
                sprite_index=lectoreat1_spr
            }
        }else{
            if comiendo==false{
                sprite_index=lector2_spr
            }else{
                sprite_index=lectoreat2_spr
            }
        }
        
        if puertavida<=0{
            image_index=0;
            state=1;
            audio_play_sound(lectorbroke_snd,1,false)
        }
    break
    
    case 1:
        walkspeed=0
        caneat=false
        
        imagespeed2=0.2//1
        imagespeed2=0.2//1
        
        if image_index>=14.3{
            state=2
            totalmordido=30
            caneat = true
            audio_play_sound(choose(lectorangry1_snd,lectorangry2_snd),1,false)
        }
        
        sprite_index=lectorbroke_spr
    break
    
    case 2:
        walkspeed=-0.8
        //caneat=true
        
        imagespeed1=0.4//2
        imagespeed2=0.38//2
        if comiendo==false{sprite_index=lector3_spr}else{sprite_index=lectoreat3_spr}
    break
}

//NORMAL

if vida <= 0 or global.nivelterminado=true{
    drop(x-25,y-92+30*water,zombiehead_spr,5,true,image_blend,y,depth-10)
    drop(x-25,y-92+30*water,lectorglasses_spr,0,true,image_blend,y,depth-10)
    drop(x,y-30+30*water,brazo_spr,7,false,image_blend,y,depth-10)
    
    with(instance_create(x,y,zombieded_obj)){
        water=other.water
        image_blend=other.image_blend;
        sprite_index=lectorded_spr
        depth=other.depth-10
    }
    
    zombiedrop(money)
    instance_destroy();
}

//soltar el periódico

if puertavida<=0 or vida<=0 or global.nivelterminado=true{
    if soltarproteccion=false{
        soltarproteccion=true
        drop(x-40,y-30+30*water,newspaper_spr,0,true,image_blend,y,depth-10)
    }
}

