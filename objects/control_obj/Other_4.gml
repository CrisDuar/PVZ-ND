room_persistent = false
part_system_depth(part, -970);

//Set sun
if (!instance_exists(zs_endless_obj)){
    soles = 50
    
    if global.niveles>=28{soles+=25}
    if global.upgrade0=true{soles+=25}
    if global.upgrade1=true{soles+=25}
    if global.niveles>=48{soles+=25}
    
    if room=multiplayer1_rm{
        multijugador=true
        soles=75
        zomes=75
    }
    
    if room==izombie_rm{zomes=50}
    if room==iplant_rm{soles=50}
    if room==nivel40_rm{soles=7650; drawsoles=soles}
}

