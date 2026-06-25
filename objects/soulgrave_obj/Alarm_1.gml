if global.nivelterminado=false and global.iniciogame=true and global.gameover=false{
    var proceed = false;
    
    if instance_exists(typeplant_obj){
        with(typeplant_obj){ //Checar si alguna planta pasa el filtro para que pueda disparar
            if collision_rectangle(other.x-25, other.y-20, 256, other.y+20,self, false, false)
            and canhit == true
            and sprite_index!=setasolar1_spr
            and sprite_index!=setasolarsleep_spr
            and sprite_index!=setasolarsun1_spr
            and sprite_index!=setamiedica3_spr{
                proceed = true;
                break;
            }
        }
    }
    
    if proceed==true{
        image_index=0
        zom=true
    }
}
alarm[1]=60*15

