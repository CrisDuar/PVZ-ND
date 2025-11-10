switch(room){
    case vase_sl_rm:
        draw_set_font(plants_fnt)
        draw_set_halign(fa_right)
        draw_set_valign(fa_top)
        var txt = ""
        var dif1 = ""
        var dif2 = ""
        var dif3 = ""
        if global.lang="es"{
            txt = "Rompe jarrones: Parte 1"
            var dif1 = "Fácil"
            var dif2 = "Normal"
            var dif3 = "Difícil"
        }else{
            txt = "Vasebreaker: Part 1"
            var dif1 = "Easy"
            var dif2 = "Normal"
            var dif3 = "Hard"
        }
        draw_text_colour_outline(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-32,32,txt,c_white,c_white,0.85,c_dkgray,c_dkgray,1,2,20,1,1,0)
        
        draw_set_font(levelname_fnt)
        draw_text_colour_outline(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-64,64,dif1,c_white,c_white,0.85,c_dkgray,c_dkgray,1,2,20,1,1,0)
        draw_text_colour_outline(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-64,96,dif2,c_white,c_white,0.85,c_dkgray,c_dkgray,1,2,20,1,1,0)
        draw_text_colour_outline(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-64,128,dif3,c_white,c_white,0.85,c_dkgray,c_dkgray,1,2,20,1,1,0)
        
        for (var i = 0; i<3; i++){
            draw_sprite(vaseicons_spr,i,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-48,80+32*i)
        }
    break
}

