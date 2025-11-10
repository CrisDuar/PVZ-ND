draw_set_halign(fa_left)
draw_set_valign(fa_middle)
draw_set_font(levelname_fnt)

draw_sprite_ext(tallo,image_index,x,y + yy,image_xscale,1,0,c_white,image_alpha)
if p3<=0 draw_sprite_ext(sprite_index,image_index,x,y-20+yy,1,image_xscale,direction,c_white,image_alpha)

if p1>0{
draw_sprite_ext(helmet,image_index,x,y-20 + yy,1,image_xscale,direction,c_white,image_alpha)
//draw_healthbar(x-25,y+5,x+25,y+10,(p1/100)*100,c_black,c_green,c_lime,0,true,false)
draw_sprite(heart_spr,2,x-21,y-3)
draw_text_colour_outline(x-5,y,"x" + string(p1),c_white,c_white,0.85,c_dkgray,c_dkgray,1,2,20,1,1,0)

}

if p2>0{
//draw_healthbar(x-25,y+5,x+25,y+10,(p2/2)*100,c_black,c_green,c_lime,0,true,false)
draw_sprite(heart_spr,1,x-21,y-3)
draw_text_colour_outline(x-5,y,"x" + string(p2),c_white,c_white,0.85,c_dkgray,c_dkgray,1,2,20,1,1,0)
}

if p3>0{
draw_sprite_ext(ice,image_index,x,y-20 +yy,1,image_xscale,direction,c_white,image_alpha)
//draw_healthbar(x-25,y+5,x+25,y+10,(p3/20)*100,c_black,c_green,c_lime,0,true,false)
draw_sprite(heart_spr,3,x-21,y-3)
draw_text_colour_outline(x-5,y,"x" + string(p3*3),c_white,c_white,0.85,c_dkgray,c_dkgray,1,2,20,1,1,0)
}

