draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha-alpha)
draw_set_font(soles_fnt)
draw_set_halign(fa_center)
draw_set_valign(fa_middle) 

var points

if list_type=menuplants_obj{
    points = control_obj.soles
}else{
    points = control_obj.zomes
}

if type==0 and draw_cost==true{
    draw_text_colour(x+38,y+17, string_hash_to_newline(cost), color,color,color,color, image_alpha-alpha)
}

if (points<cost or cantselect=true or t_rechar>0) and draw_lock==true{
    draw_sprite_ext(load_spr,0,x,y,image_xscale,image_yscale,0,c_white,image_alpha)
}

if t_rechar>0 and draw_load==true{
    draw_sprite_ext(load_spr,31-(31*(t_rechar/(timer*60))),x,y,image_xscale,image_yscale,0,c_white,image_alpha)
}

if control_obj.multijugador==true{// and global.vs_mtouch[packet_type] = false{
    if (control2p_obj.pselect=multno and list_type==menuplants_obj){
    
        draw_sprite_ext(selectedplant2p_spr,0,x,y,image_xscale,image_yscale,0,c_white,image_alpha)
        
    }else if (control2p_obj.zselect=multno and list_type==menuzombi_obj){
    
        draw_sprite_ext(selectedzombie2p_spr,0,x,y,image_xscale,image_yscale,0,c_white,image_alpha)
    }
}

if localselect=select and draw_select==true{
    draw_sprite_ext(select_spr,selectanim,x,y,image_xscale,image_yscale,0,c_white,image_alpha)
}

