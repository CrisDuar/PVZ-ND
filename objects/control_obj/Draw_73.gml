if global.gameover==true{
    draw_set_alpha(gmov_a)
    draw_rectangle_colour(0,0,100,room_height,c_black,c_black,c_black,c_black,false)
    draw_sprite_ext(black_deg_spr,0,100,0,1,room_height,0,c_black,gmov_a)
    draw_set_alpha(1)
}

