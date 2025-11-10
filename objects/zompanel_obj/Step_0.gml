event_inherited();

if instance_exists(trazo_obj){
    if trazo_obj.x+50<point{
        point=trazo_obj.x+50 + random(10)
    }
}

//Leave the machine
if (x<point or vida<=0) and (dropmachine=false){
   with(instance_create(x-75,y,zomsunmachine_obj)){
       water=other.water
       depth=other.depth-5
       vida=other.puertavida
   }
   dropmachine=true
   puertavida=0
   peso=0
   hurtsnd=conohurt_snd
   hurt2snd=conohurt_snd
}

if dropmachine==false{
    if puertavida>200{
        if vida>160{
            sprite_index=zompanelwalk01_spr
        }else if vida>100{
            sprite_index=zompanelwalk02_spr
        }else if vida>30{
            sprite_index=zompanelwalk03_spr
        }else{
            sprite_index=zompanelwalk04_spr
        }
    }else if puertavida>50{
        if vida>160{
            sprite_index=zompanelwalk11_spr
        }else if vida>100{
            sprite_index=zompanelwalk12_spr
        }else if vida>30{
            sprite_index=zompanelwalk13_spr
        }else{
            sprite_index=zompanelwalk14_spr
        }
    }else{
        if vida>160{
            sprite_index=zompanelwalk21_spr
        }else if vida>100{
            sprite_index=zompanelwalk22_spr
        }else if vida>30{
            sprite_index=zompanelwalk23_spr
        }else{
            sprite_index=zompanelwalk24_spr
        }
    }
}else{
    if vida>160{
        if comiendo sprite_index=zompaneleat1_spr else sprite_index=zompanelwalk31_spr
    }else if vida>100{
        if comiendo sprite_index=zompaneleat2_spr else sprite_index=zompanelwalk32_spr
    }else if vida>30{
        if comiendo sprite_index=zompaneleat3_spr else sprite_index=zompanelwalk33_spr
    }else{
        if comiendo sprite_index=zompaneleat4_spr else sprite_index=zompanelwalk34_spr
    }
}

if (x>=point and dropmachine == false){
    walkspeed=-0.35
    imagespeed2=0.3//walk
    caneat=false
}else{
    walkspeed=-0.25
    imagespeed1=0.18//eat
    imagespeed2=0.25//walk
    caneat=true
}

//Soltar el casco
if (vida<=100 or global.nivelterminado=true) and drophelmet=false{
    maxhp = 100
    drophelmet=true
    drop(x-25, y-92+30*water, helmet1_spr, 0, true, image_blend, y, depth-10)
}

if drophelmet==true and dropmachine==true soltarproteccion=true

