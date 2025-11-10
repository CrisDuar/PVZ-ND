if !instance_exists(dialogctrl_obj){
    switch(reverse){
        case 0:
            hspeed+=0.02
        break;
        
        case 1:
            if cont or hspeed>0 hspeed-=0.05 else hspeed=0
        break;
            
        case 2:
            if hspeed>0{
                hspeed-=0.05
                if hspeed<0 hspeed=0;
            }
        break
    }
}

if hspeed=0 
and global.niveles>6 
and reverse=2 
and !instance_exists(menuselectplan_obj)
and levelallowed==true{
    if control_obj.multijugador=false{
        if room==izombie_rm{
            instance_create(954,896,menuselectzomb_obj)
        }else{
            instance_create(954,896,menuselectplan_obj)
        }
    }else{
        instance_create(__view_get( e__VW.XView, 0 )+544-163,906,menuselectmult_obj)
    }
}

//Press here to continue
if global.lang="es"{cont_txt = "Presiona aquí para continuar"}
else{cont_txt = "Press here to continue"}

