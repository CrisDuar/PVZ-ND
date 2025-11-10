if glow<360{
    glow+=0.5
}else{
    glow=0
}

if glow_alpha>0 then glow_alpha-=0.05 else instance_destroy();

