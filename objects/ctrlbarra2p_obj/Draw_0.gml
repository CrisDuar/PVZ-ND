draw_set_font(levelname_fnt)
draw_set_halign(fa_right)
draw_set_valign(fa_center)
if global.iniciogame=true{
    //dibujar la barra de progreso
    draw_healthbar(823+plus, 615, 1064+plus, 627,bar*(100/3), c_black, c_lime, c_lime,1, false, true)
    
    //dibujar la el fondo de la gui
    draw_sprite_ext(barraavance2_spr,0,880+plus,587,-1,1,0,c_white,1)
    draw_sprite(barraavance1_spr,0,880+plus,587)
    draw_sprite(barraavance1_spr,0,944+plus,587)
    draw_sprite(barraavance2_spr,0,1008+plus,587)
    
    for(var i=0; i<3;i++){
        var subimg=0
        if global.dianas>i subimg=1
        draw_sprite(dianatumbada_spr,subimg,(1064-(i+1)*(241/3))+plus,620)
    }
    
    if global.lang="es"{
    draw_text_colour_outline(800,625,lvl_es,c_white,c_white,0.85,c_dkgray,c_dkgray,1,2,20,1,1,0)
    }
    if global.lang="en"{
    draw_text_colour_outline(800,625,lvl_en,c_white,c_white,0.85,c_dkgray,c_dkgray,1,2,20,1,1,0)
    }
}

