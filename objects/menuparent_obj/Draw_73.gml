var show = true

if os_type == os_android{
    if out_select==false or !mouse_check_button(mb_left){
        show = false
    }
}

if localselect=select and show{
    if control_obj.multijugador==false{
        draw_sprite_ext(sprite,0,mouse_x+xx,mouse_y+yy, xmod, 1, 0, c_white, 1)
    }
}

