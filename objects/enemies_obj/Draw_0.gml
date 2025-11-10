draw_self();

var size = ds_list_size(plist)
if ds_list_size(plist)>0{
    for (var i = 0; i<size; i++){
        draw_sprite_ext(plist[| i], 0, x,(y+66+(63*i)),1,1,0,c_white,image_alpha)
    }
}

