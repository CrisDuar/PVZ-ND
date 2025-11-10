/*draw_set_valign(fa_top)
draw_text(x,0,t)
draw_text(x,20,t2)
draw_text(x,40,m)
draw_text(x,60,"(" + string(xx) + ", " + string(yy) + ")")*/

if global.iniciogame=true and global.gameover==false{
    //dibujar la barra de progreso
    draw_healthbar(823, 615, 1064, 627,bar*(100/maxbrains), c_black, $c197f7, $c197f7,1, false, true)
    
    //dibujar la el fondo de la gui
    draw_sprite_ext(barraavance2_spr,0,880,587,-1,1,0,c_white,1)
    draw_sprite(barraavance1_spr,0,880,587)
    draw_sprite(barraavance1_spr,0,944,587)
    draw_sprite(barraavance2_spr,0,1008,587)
    
    for(var i=0; i<maxbrains;i++){
        var subimg=0
        if global.brains>i subimg=1
        draw_sprite(braineaten_spr,subimg,(1064-(i+1)*(241/maxbrains)),620)
    }
    draw_sprite(cabecitazombie_spr,0,1064-(bar)*(241/maxbrains),620)
}

/* */
/*  */
