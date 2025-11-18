//if variable_global_get(cond)>lvl{
if (global.progress[? cond] > lvl){
    sprite_index=sprite
    if (control_obj.cansun==false and (sprite=menusun1_spr or sprite=menusetasolar1_spr or sprite=menubirasol1_spr or sprite=menugoldbloom1_spr))
    or (control_obj.multijugador==true and (sprite=menugoldbloom1_spr or sprite=menubirasol1_spr or sprite==oculartreeslot_spr))
    or ((room==nivel14_rm or room==iplant_rm) and (sprite==oculartreeslot_spr))
    or ((room==levelhard4_5_rm or room==levelhard2_5_rm) and sprite==pumpkinslot_spr){
        ban=true
    }else{
        ban=false
    }
}else{
    sprite_index=locked
    ban=false
}

if global.playerReady=true{vspeed+=0.5}

if vspeed>=25{
    instance_destroy();
}

