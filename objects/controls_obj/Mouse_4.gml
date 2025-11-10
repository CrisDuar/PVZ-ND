if visible==true and !instance_exists(gamepadconfig_obj){
    with(controls_obj){
        def_key = temp_key
        ch_key = false
        sh = 0
    }
    temp_key = def_key
    def_key=noone
    ch_key = !ch_key
    
    if ch_key==true{
        sh=1
    }else{
        sh=0
    }
}

