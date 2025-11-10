if ((x+sprite_width-sprite_xoffset)<(__view_get( e__VW.XView, 0 ))
|| (x-sprite_xoffset)>(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ))
|| (y+sprite_height-sprite_yoffset)<(__view_get( e__VW.YView, 0 ))
|| (y-sprite_yoffset)>(__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ))){
    visible=false
}else{
    visible=true
}

