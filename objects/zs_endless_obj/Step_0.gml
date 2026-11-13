//actualizar el texto
lvl_es = lvld_es + " - Banderas: " + string(survprogress);
lvl_en = lvld_en + " - Flags: " + string(survprogress);

if timer<=0{
    survival_next_game()
    //survival_save(filename)
    timercheck=false
    timer=60*5
}

event_inherited();

//Prize
if h>=fn
and t2<=0
and global.gameover=false
and global.nivelterminado=false
and timercheck=false
and zom_amt <= 0
and infinite=false{
    timercheck=true
    global.nivelterminado = true;
    
    with(instance_create(xx,yy,parentmoney_obj)){
        
        sprite_index = bolsa_monedas_spr
        value = min(100 + (30*other.survprogress), 3100)
        
        snd1=billetedrop_snd
        snd2=coins_snd
    }
}

if timercheck==true timer--

