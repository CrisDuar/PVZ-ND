if room!=shop_rm{
    if global.iniciogame=false or global.gameover=true{
        image_alpha=0
    }else{
        if instance_exists(moneymove_obj){
            image_alpha=1
        }else{
            if image_alpha>0 image_alpha-=0.01
        }
    }
    colorlima = make_colour_rgb(149,232,69)
    colorfondo = c_green
    image_index=0
}else{
    colorlima = make_colour_rgb(196,106,46)
    colorfondo = make_colour_rgb(105,70,44)
    image_index=1
}

