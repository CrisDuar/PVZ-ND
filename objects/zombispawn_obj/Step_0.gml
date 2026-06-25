zom_amt = instance_number(eatfather_obj)+instance_number(vase_obj)+instance_number(bowlinghead_obj)-instance_number(zomsunmachine_obj)-instance_number(signclaire_obj)-instance_number(beachballdrop_obj)-instance_number(trashcan_obj)-instance_number(caja_obj)

if global.iniciogame=true{
    if started=false{
        t=60*pt*50;
        started=true
    }else if global.iniciogame=true and f!=0 and global.gameover=false and global.nivelterminado=false{
        if horde_update>0{
            if horde_canupdate horde_update--
        }else{
            horde_update=60
            zombie_horde_health_update();
        }
        
        if h<fn{
            if t>0 and t2<=0{
            //if (instance_number(eatfather_obj)+instance_number(bowlinghead_obj)-instance_number(signclaire_obj)-instance_number(zomsunmachine_obj)-instance_number(zombiediana_obj)-instance_number(boss1_obj)-instance_number(boss2_obj)-instance_number(boss3_obj)-instance_number(beachballdrop_obj)-instance_number(trashcan_obj) > 0)
                if (horde_hp>horde_ttl_hp*horde_prcnt) or (instance_number(bowlinghead_obj)>0) or (instance_number(caja_obj)>0){//IF THERE ARE NO ZOMBIES
                    t--//COUNT SLOW
                }else{
                    t-=50//COUNT FAST
                }
            }
        
            if t<=0 or (horde_hp<=horde_ttl_hp*horde_prcnt and horde_canupdate and horde_wait<=0 and horde_canfifty){
                if (h == 0) audio_play_sound(zombies_coming_snd,1,false);
                    
                
                if (wf[h]=1){   //Common flag
                    instance_create(x,y,hugeofzombies_obj);
                    t2=60*4.5;
                    horde_wait=60*5
                    
                }else if wf[h]=2{   //Final wave
                    
                    with(instance_create(x,y,hugeofzombies_obj)){final=true};
                    global.hordafinal=true;
                    t2=60*4.5;
                    horde_wait=60*5
                }else if (wf[h] == 3){  //Necromancy
                    
                    with(instance_create(x,y,finalwave_obj)){sprite_index = necromancy_spr};
                    t2=60*1.5;
                    horde_wait=60*2//*5
                }
                
                alarm[0]=t2+1
                t=35*60
                horde_canupdate=true
            }
        }
    }
}

if t2<=0 and checkt2=true {audio_play_sound(suspenso1_snd,1,false); checkt2=false}
if t2>0 {t2--; checkt2=true}

if horde_wait>0 horde_wait--

if progressbar==true{
    if bar<h bar+=0.01
    if bar>h bar-=0.05
}

//Prize
if survival==false{
    if h>=fn
    and t2<=0
    and global.gameover=false
    and global.nivelterminado=false
    and !instance_exists(newprize_obj)
    and zom_amt <= 0
    and infinite=false{
		
        create_prize(xx, yy);
    }
}

//surprise attack
if surprise_enabled=true{
    if h>=fn and surprise_timer>0{
        surprise_timer--
    }
    
    if surprise_timer<=0 and surprise_attack=false{
        zombie_surprise_attack()
        surprise_attack=true
    }
}

