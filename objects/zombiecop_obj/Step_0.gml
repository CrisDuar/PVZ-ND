event_inherited();

//Cambiar de estado
if instance_exists(typeplant_obj) and x<=1120 and global.gameover=false{
    if t<time{
        if (room != izombie_rm) t++
    }else{
        state=1
        image_index=0
        t=0
    }
}else{
    state = 0
}

if vida<=30{
    puertavida=0
}

switch(state){
    case 0://Camina normalmente | sprites
        caneat = true
        walkspeed=-0.2
        
        ///SPRITES
        if puertavida>125{
            if vida>400{
                if comiendo == false{sprite_index=zomcopwalk1_1_spr}else{sprite_index=zomcopeat1_1_spr}
            }else if vida>100{
                if comiendo == false{sprite_index=zomcopwalk1_2_spr}else{sprite_index=zomcopeat1_2_spr}
            }else{
                if comiendo == false{sprite_index=zomcopwalk1_3_spr}else{sprite_index=zomcopeat1_3_spr}
            }
        }else if puertavida>0{
            if vida>400{
                if comiendo == false{sprite_index=zomcopwalk2_1_spr}else{sprite_index=zomcopeat2_1_spr}
            }else if vida>100{
                if comiendo == false{sprite_index=zomcopwalk2_2_spr}else{sprite_index=zomcopeat2_2_spr}
            }else{
                if comiendo == false{sprite_index=zomcopwalk2_3_spr}else{sprite_index=zomcopeat2_3_spr}
            }
        }else{
            if vida>400{
                if comiendo == false{sprite_index=zomcopwalk3_1_spr}else{sprite_index=zomcopeat3_1_spr}
            }else if vida>100{
                if comiendo == false{sprite_index=zomcopwalk3_2_spr}else{sprite_index=zomcopeat3_2_spr}
            }else if vida>30{
                if comiendo == false{sprite_index=zomcopwalk3_3_spr}else{sprite_index=zomcopeat3_3_spr}
            }else{
                if comiendo == false{sprite_index=zomcopwalk3_4_spr}else{sprite_index=zomcopeat3_4_spr}
            }
        }
    break
    
    case 1://Arroja la bomba de humo
        walkspeed=0
        caneat=false
        
        if puertavida>125{
            if vida>400{
                sprite_index=zomcopthrow1_1_spr
            }else if vida>100{
                sprite_index=zomcopthrow1_2_spr
            }else{
                sprite_index=zomcopthrow1_3_spr
            }
        }else if puertavida>0{
            if vida>400{
                sprite_index=zomcopthrow2_1_spr
            }else if vida>100{
                sprite_index=zomcopthrow2_2_spr
            }else{
                sprite_index=zomcopthrow2_3_spr
            }
        }else{
            if vida>400{
                sprite_index=zomcopthrow3_1_spr
            }else if vida>100{
                sprite_index=zomcopthrow3_2_spr
            }else if vida>30{
                sprite_index=zomcopthrow3_3_spr
            }else{
                sprite_index=zomcopthrow3_4_spr
            }
        }
        
        if image_index>12 and bomb==false{
            bomb = true
            var obj_temp = instance_nearest(x-irandom(300),y-irandom_range(y,y-640),typeplant_obj)

            if obj_temp!=noone{
                with(instance_create(x-50,y-80,smokegrenade_obj)){obj=obj_temp}
            }
        }
        
        if image_index>image_number-1{
            bomb = false
            t=0
            state=0
        }
    break
}

//soltar la puerta
if (puertavida<=0 or vida<=0 or global.nivelterminado=true) and dropdoor=false{
    dropdoor=true
    drop(x-40, y-30+30*water, copshield_spr, 0, true, image_blend, y, depth-10)
}

//Soltar el casco
if (vida<=100 or global.nivelterminado=true) and drophelmet=false{
    maxhp = 100
    drophelmet=true
    drop(x-25, y-92+30*water, cophelmet_spr, 0, true, image_blend, y, depth-10)
}

if dropdoor==true and drophelmet==true{
    soltarproteccion=true
}

