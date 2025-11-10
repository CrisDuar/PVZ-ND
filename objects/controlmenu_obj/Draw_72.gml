if __background_get( e__BG.Index, 0 )==poolday_bg
or __background_get( e__BG.Index, 0 )==poolsunset_bg
or __background_get( e__BG.Index, 0 )==poolnight_bg{
    if (global.videoq > 1){
        draw_sprite_wave(waterbg_spr,0,268,265,0,150,2,a)
    }else{
        draw_sprite(waterbg_spr,0,268,265)
    }
}

