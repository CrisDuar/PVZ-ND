depth=-y-100

if (x+sprite_width-sprite_xoffset)<(__view_get( e__VW.XView, 0 ))
|| (x-sprite_xoffset)>(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ))
|| (y+sprite_height-sprite_yoffset)<(__view_get( e__VW.YView, 0 ))
|| (y-sprite_yoffset)>(__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ))
{
 instance_destroy();
}
if image_alpha<1{image_alpha+=0.025}
if speed<10{speed+=0.2}

if angle<360 angle++ else angle=0

