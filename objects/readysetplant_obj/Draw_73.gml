switch(texttodraw){
    case 1:
        draw_sprite_ext(ready_spr,langframe,__view_get( e__VW.XView, 0 )+544,370,size,size,0,c_white,transparencia)
    break
    
    case 2:
        draw_sprite_ext(set_spr,langframe,__view_get( e__VW.XView, 0 )+544,370,size,size,0,c_white,transparencia)
    break
    case 3:
    if room==izombie_rm{
        draw_sprite_ext(brainz_spr,langframe,__view_get( e__VW.XView, 0 )+544,370,size,size,0,c_white,transparencia)
    }else{
        draw_sprite_ext(plant_spr,langframe,__view_get( e__VW.XView, 0 )+544,370,size,size,0,c_white,transparencia)
    }
    break
}


