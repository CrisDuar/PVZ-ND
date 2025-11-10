if viewx>0{viewx-=0.25}
if viewx<0{viewx+=0.25}

__view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (viewx) )

if __view_get( e__VW.XView, 0 )>limit{viewx=0; __view_set( e__VW.XView, 0, limit )}
if __view_get( e__VW.XView, 0 )<0{viewx=0; __view_set( e__VW.XView, 0, 0 )}

__view_set( e__VW.XView, 0, clamp(floor(__view_get( e__VW.XView, 0 )),0,limit) )

if room==level3_sl_rm{
    if __view_get( e__VW.XView, 0 )>=6500{
        if __background_get( e__BG.Alpha, 2 )<1 __background_set( e__BG.Alpha, 2, __background_get( e__BG.Alpha, 2 ) + (0.05) )
        if __background_get( e__BG.Alpha, 3 )<1 __background_set( e__BG.Alpha, 3, __background_get( e__BG.Alpha, 3 ) + (0.05) )
    }else{
        if __background_get( e__BG.Alpha, 2 )>0 __background_set( e__BG.Alpha, 2, __background_get( e__BG.Alpha, 2 ) - (0.05) )
        if __background_get( e__BG.Alpha, 3 )>0 __background_set( e__BG.Alpha, 3, __background_get( e__BG.Alpha, 3 ) - (0.05) )
    }
}

if (!drag){
    if keyboard_check(vk_left) or keyboard_check(ord("A")) or mouse_wheel_up(){
        if __view_get( e__VW.XView, 0 )>0{
            viewx=-16
        }
    }
    if keyboard_check(vk_right) or keyboard_check(ord("D")) or mouse_wheel_down(){
        if __view_get( e__VW.XView, 0 )<limit{
            viewx=16
        }
    }
}

