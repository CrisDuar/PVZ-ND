//seleccionar y deseleccionar
if image_alpha==1 and seedpacket_is_free() and instance_exists(peagw_obj){
    with(peagw_obj){
        if p1<=0 and p2<=0 and p3<=0{
            other.t_rechar=other.timer*60
            control_obj.soles -= other.cost
            audio_play_sound(gwgatling_snd,1,false)
            instance_create(x,y-15,destroygrave_obj)
            p1=100
            image_alpha=0
        }
    }
}

