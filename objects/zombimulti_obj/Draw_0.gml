event_inherited();

if global.gamepad_zombie==-1{
    draw_sprite_ext(playericon_spr,1,x,y-50,1,1,image_angle,image_blend,image_alpha)
}else{
    var frm = 2
    if global.gamepad_zombie>global.gamepad_plant frm = 3
    
    draw_sprite_ext(playericon_spr,frm,x,y-50,1,1,image_angle,image_blend,image_alpha)
}

