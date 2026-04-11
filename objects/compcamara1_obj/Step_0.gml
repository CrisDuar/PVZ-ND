var _lvl_id = string(zombispawn_obj.lvl_type) + "_" + string(zombispawn_obj.lvl_id)
/*
	type
	-1: No achivements (custom levels)
	0: Regular or adventure
	1: Hard mode
	2: Endless
	3: Versus or battles
	4: Vasebreaker
	5: Minigames
	
*/

if done=false{
    switch(_lvl_id){
        default:
            audio_play_sound(readyplant_snd,1,false)
            instance_create(x,y,readysetplant_obj)
            done=true
        break
        
        case "0_29":
        case "1_11":
            if boss1_obj.bossready=true{
                audio_play_sound(readyplant_snd,1,false)
                instance_create(x,y,readysetplant_obj)
                done=true
            }
        break
        
        case nivel51_rm:
        case levelhard3_6_rm:
            if boss2_obj.bossready=true{
                audio_play_sound(readyplant_snd,1,false)
                instance_create(x,y,readysetplant_obj)
                done=true
            }
        break
        
        case nivel73_rm:
       //case levelhard3_6_rm:
            if boss3_obj.bossready=true{
                audio_play_sound(readyplant_snd,1,false)
                instance_create(x,y,readysetplant_obj)
                done=true
            }
        break
    }
}

