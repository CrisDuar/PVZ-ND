draw_set_alpha(alpha)

draw_sprite_ext(animchain_spr, chain_img, x + 40 + random_range(-chain_sh, chain_sh) + chain_pos, y+ random_range(-chain_sh, chain_sh), 1, 1, chain_angle, c_white, alpha)

draw_sprite_ext(animchain_spr, chain_img, x - 40 + random_range(-chain_sh, chain_sh) - chain_pos, y+ random_range(-chain_sh, chain_sh), -1, 1, -chain_angle, c_white, alpha)

draw_sprite(animmask_spr, mask_img, x + random_range(-mask_sh, mask_sh), y+ random_range(-mask_sh, mask_sh))

draw_set_halign(fa_center)
draw_set_font(levelname_fnt)
var num = 0

if instance_exists(boss3_obj) num = 6 - boss3_obj.display_fase

if global.lang="es"{
    if (num > 1) {draw_text_colour_outline(x, y+45,"Quedan " +string(num)+ " cadenas",c_white,c_white,0.85*txt_alpha,c_dkgray,c_dkgray,txt_alpha,2,20,1,1,0)}
    else {draw_text_colour_outline(x, y+45,"Queda " +string(num)+ " cadena",c_white,c_white,0.85*txt_alpha,c_dkgray,c_dkgray,txt_alpha,2,20,1,1,0)}
}else{
    if (num > 1) {draw_text_colour_outline(x, y+45, string(num) + " Chains left",c_white,c_white,0.85*txt_alpha,c_dkgray,c_dkgray,txt_alpha,2,20,1,1,0)}
    else {draw_text_colour_outline(x, y+45, string(num) + " Chain left",c_white,c_white,0.85*txt_alpha,c_dkgray,c_dkgray,txt_alpha,2,20,1,1,0)}
    
}

draw_set_alpha(1)

