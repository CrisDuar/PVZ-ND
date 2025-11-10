if image_alpha==1{
    if sprite_index==sprite{
        global.almanacpage=0
        if ctrlalmanac1_obj.unitsprite!=plantsprite{
            audio_play_sound(seleccionarplantas_snd,1,false)
            audio_play_sound(seedpack_snd,1,false)
            
            with(ctrlalmanac1_obj){
                grass=other.bg
                unitcost=string(other.cost)
                unitname_es=other.name_es
                unitname_en=other.name_en
                //descrip_es=other.desc_es
                //descrip_en=other.desc_en
                descrip_es[0]=other.desc_es[0]
                descrip_es[1]=other.desc_es[1]
                descrip_en[0]=other.desc_en[0]
                descrip_en[1]=other.desc_en[1]
                unitsprite=other.plantsprite
                cutoff=0
                scroll=0
            }
            ctrlalmanac1_obj.limit = 0
            ctrlalmanac1_obj.scroll = 0
        }
    }else{
        audio_play_sound(errorseed_snd,1,false)
    }
}
draggin=false

