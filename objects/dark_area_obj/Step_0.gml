if instance_exists(boss3_obj) and global.gameover==false{
    if global.iniciogame==false or boss3_obj.bossready=false{
        lph = boss3_obj.dark_lph
        xx = boss3_obj.dark_x
        
        if global.gameready!=0{
            if playonce==0{
                playonce=1
                audio_play_sound(creepywind_snd,1,false)
                audio_play_sound(boss3_1_sng,1,false)
            }
            
            if sin_lph<360{
                if audio_is_playing(boss3_1_sng) or sin_lph!=270{
                    sin_lph+=2
                }
            }else{
                sin_lph=0
            }
            full_lph = (0.5*sin(degtorad(sin_lph))+0.5)
        }
    }else{
        if boss3_obj.dark_fase<3{
            //Particles and vfx
            if boss3_obj.dark_lph<=0{
                if glow<360{
                    glow+=2
                }else{
                    glow=0
                }
                lph = (0.5*sin(degtorad(glow))+0.5)*0.75
                xx = 1140
            }else{
                lph = boss3_obj.dark_lph
                xx = boss3_obj.dark_x
                part_particles_create(control_obj.part, xx+irandom(50), y+irandom_range(0,640), control_obj.p22, choose(0,1));
            }
        
        
            if boss3_obj.dark_lph>=1 and playonce==1{
                playonce=2
                audio_play_sound(boss3_2_sng,1,true)
                
                if audio_is_playing(boss3_3_sng) audio_stop_sound(boss3_3_sng)   
            }
            
            if boss3_obj.dark_lph<1 and boss3_obj.dark_lph>0{
                if audio_is_playing(boss3_3_sng) audio_stop_sound(boss3_3_sng) 
                if audio_is_playing(boss3_2_sng) audio_stop_sound(boss3_2_sng) 
            }
            
            if boss3_obj.state==5{
                if audio_is_playing(boss3_2_sng) audio_stop_sound(boss3_2_sng) 
            }
            
            if boss3_obj.dark_lph<=0 and playonce==2 and boss3_obj.state!=5{
                playonce=1
                audio_play_sound(boss3_3_sng,1,true)
            }
        }else{
            if audio_is_playing(boss3_3_sng) audio_stop_sound(boss3_3_sng) 
            if audio_is_playing(boss3_2_sng) audio_stop_sound(boss3_2_sng)
            
            if boss3_obj.state!=5 and playonce!=3{
                playonce=3
                with(instance_create(0,0,fadeout_obj)){color=c_white}
                audio_sound_pitch(audio_play_sound(plantern3_snd,1,false),1.3)//just like the version lmao lmao lmao
                audio_play_sound(boss3_4_intro_sng,1,false)
                
                boss3_obj.dark_time=60*35
                with(eatfather_obj){
                    if object_index!=boss3_obj{
                        zombiedrop(money);
                        instance_destroy();
                    }
                }
                ctrlcinta1_obj.t1=3
                ctrlcinta1_obj.t2=3
                final_once = false
            }else{
                if (!audio_is_playing(boss3_4_intro_sng) and !audio_is_playing(boss3_4_sng) and final_once = false){
                    audio_play_sound(boss3_4_sng,1,true);
                    final_once = true
                }
            }
            
            if boss3_obj.dark_lph<=0{
                xx = 1140
            }else{
                xx = boss3_obj.dark_x
            }
            
            if lph>0{
                lph-=0.05
            }
        }
    }
}

