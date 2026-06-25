//*
draw_set_font(f3_fnt)
draw_set_valign(fa_top)
draw_set_halign(fa_left)
//draw_text(x, 50,string(lvl_type) + "_"+ string(lvl_id))
//draw_text(x,50+20*0,"Current horde:" + string(h))
//draw_text(x,50+20*1,"Total flags:" + string(fn))
//draw_text(x,50+20*2,"Grace time:" + string(pt))
//draw_text(x,50+20*3,"time:" + string(t))
//draw_text(x,50+20*4,"HORDE RELATION: " + string(horde_hp/horde_ttl_hp))
//draw_text(x,50+20*5,"HORDE_HEALTH:" + string(horde_hp) + "/" + string(horde_ttl_hp))
//draw_text(x,50+20*4,"Final wave?: " + string(global.hordafinal))
//var sus = string_delete(room_get_name(room),10, 6)
//draw_text(x,50+20*5,"rubies: " + string(sus))
//draw_text(x,50+20*6,"FN: " + string(fn))
//draw_text(x,50+20*7,"Size: " + string(ds_list_size(f_list)))
//draw_text(x,50+20*8,"is empty?: " + string(ds_list_empty(f_list)))

//for (var i = 0; i < ds_list_size(f_list); i++){
//    draw_text(x,50+20*(9+i),"F_LIST: " + string(f_list[| i]))
///}
//*/
draw_set_font(levelname_fnt)
draw_set_halign(fa_right)
draw_set_valign(fa_center)
if global.gameover==false{
    if h>0 and progressbar=true and onlyname=false{
        //dibujar la barra de progreso
        draw_healthbar(823, 615, 1064, 627,bar*(100/fn), c_black, c_lime, c_lime,1, false, true)
        
        //dibujar la el fondo de la gui
        draw_sprite_ext(barraavance2_spr,0,880,587,-1,1,0,c_white,1)
        draw_sprite(barraavance1_spr,0,880,587)
        draw_sprite(barraavance1_spr,0,944,587)
        draw_sprite(barraavance2_spr,0,1008,587)
        
        
        if global.lang="es"{
            draw_text_colour_outline(800,625,lvl_es,c_white,c_white,0.85,c_dkgray,c_dkgray,1,2,20,1,1,0)
        }else{
            draw_text_colour_outline(800,625,lvl_en,c_white,c_white,0.85,c_dkgray,c_dkgray,1,2,20,1,1,0)
        }
    
        for(var i=0; i<fn;i++){
            if wf[i]>0 && wf[i] != 3 draw_sprite(banderita_spr,0,1064-(i+1)*(241/fn),627)
        }
        
        draw_sprite(cabecitazombie_spr,0,1064-(bar)*(241/fn),620)
    }else if (h<=0 or onlyname=true) and progressbar=true and global.iniciogame=true{
        if global.lang="es"{
            draw_text_colour_outline(1095,625,lvl_es,c_white,c_white,0.85,c_dkgray,c_dkgray,1,2,20,1,1,0)
        }else{
            draw_text_colour_outline(1095,625,lvl_en,c_white,c_white,0.85,c_dkgray,c_dkgray,1,2,20,1,1,0)
        }
    }
}