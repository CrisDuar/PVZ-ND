draw_set_blend_mode(bm_add)
draw_set_colour(c_white)
//draw_line(xx,yy,objx,objy)

for (var i = 0; i<trail-1; i++){
 draw_line_width(array_posX[i],array_posY[i],array_posX[i+1],array_posY[i+1],2)
 if (global.videoq > 0) draw_sprite_ext(raypart_spr,0,array_posX[i+1],array_posY[i+1],1,1,array_rotation[i+1],c_aqua,0.3)
}
draw_set_blend_mode(bm_normal)

