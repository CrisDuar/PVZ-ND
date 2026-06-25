if (global.gameover){
    //hspd=0
    //vspd=0
    spd=0
}

if rule_xlimit=true{
    if x>xstart+xx_lim-10 or x<xstart-xx_lim-10{
        image_alpha-=0.1
    }
    
    if x>xstart+xx_lim or x<xstart-xx_lim{
        instance_destroy();
    }
}

if rule_ylimit=true{
    if y>ystart+yy_lim-10 or y<ystart-yy_lim-10{
        image_alpha-=0.1
    }
    
    if y>ystart+yy_lim or y<ystart-yy_lim{
        instance_destroy();
    }
}

if rule_outside==false{
    if ((x+sprite_width-sprite_xoffset)<(__view_get( e__VW.XView, 0 ))
    || (x-sprite_xoffset)>(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ))
    || (y+sprite_height-sprite_yoffset)<(__view_get( e__VW.YView, 0 ))
    || (y-sprite_yoffset)>(__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ))){
        instance_destroy();
    }
}

if image_alpha<1{image_alpha+=0.05}

if rule_speed==true and global.gameover==false{
    /*if hspd > hspd_max{hspd -= 0.5}
    if hspd < hspd_min{hspd += 0.5}
    
    if vspd > vspd_max{vspd -= 0.5}
    if vspd < vspd_min{vspd += 0.5}
    */
    if spd > spd_max{spd -= frct}
    if spd < spd_min{spd += acc}
    
}

//x+=hspd
//y+=vspd
speed = spd;

