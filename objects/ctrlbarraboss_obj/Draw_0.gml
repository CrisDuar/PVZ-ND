draw_set_font(levelname_fnt)
draw_set_halign(fa_right)
draw_set_valign(fa_middle)

if global.iniciogame=true and global.gameover==false{
draw_healthbar(823, 615, 1064, 627, bar, c_black, c_min, c_max,1, false, true)
//dibujar la el fondo de la gui
draw_sprite_ext(barraavance2_spr,0,880,587,-1,1,0,c_white,1)
draw_sprite(barraavance1_spr,0,880,587)
draw_sprite(barraavance1_spr,0,944,587)
draw_sprite(barraavance2_spr,0,1008,587)

//dibujar las banderas y la cabeza
draw_sprite(spr,0,1070,610)

if global.lang="es"{
    draw_text_colour_outline(800,625,lvl_es,c_white,c_white,0.85,c_dkgray,c_dkgray,1,2,20,1,1,0)
    }
    if global.lang="en"{
    draw_text_colour_outline(800,625,lvl_en,c_white,c_white,0.85,c_dkgray,c_dkgray,1,2,20,1,1,0)
    }
}

