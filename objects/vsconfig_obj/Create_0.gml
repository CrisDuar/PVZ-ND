if room!=multiplayer1_rm{
    global.zombieswin=false
    
    global.vsgamemode=1
    global.vsmap=0
    global.vsmaxmap=0
    //0=quick 1=custom 2=special
    if global.niveles>73{global.vsmaxmap=5}
    else if global.niveles>51{global.vsmaxmap=3}
    else if global.niveles>30{global.vsmaxmap=2}
    else if global.niveles>15{global.vsmaxmap=1}
    
    global.vssudden=true
    global.multiselection=0
    
    global.n_devices_con = 0
}

p1=0
p2=0
p3=0
p4=0
p5=0
p6=0

z1=0
z2=0
z3=0
z4=0
z5=0
z6=0

