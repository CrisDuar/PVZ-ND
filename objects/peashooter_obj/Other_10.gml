/// @description SET COSTUMES

if disfraz==1{
    cadencia=0.4; 
    imgidle=peadis1_spr
    imgshot=peashootdis1_spr
    sprite_index=imgidle
    part_system_destroy(part)
    dmg = 40
}else if disfraz==2{
    disfraz=2
    imgidle=peadis2_spr
    imgshot=peashootdis2_spr
    sprite_index=imgidle
    dmg = 20
}else{
    part_system_destroy(part)
}

