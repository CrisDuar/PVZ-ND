event_inherited();

if zom=true and shoot=false and image_index>=5.5{
    if heavy=false{instance_create(x,y-50,soul_obj)}else{instance_create(x,y-50,soul2_obj)}
    shoot=true
}

if zom=true and image_index>=8.5{ 
zom=false
shoot=false
heavy=false
}


if zom=false{
if vida>600{sprite_index=soulgrave1_spr}
if vida<=600{sprite_index=soulgrave2_spr}
if vida<=300{sprite_index=soulgrave3_spr}
}

if zom=true{
if vida>600{sprite_index=soulgraveact1_spr}
if vida<=600{sprite_index=soulgraveact2_spr}
if vida<=300{sprite_index=soulgraveact3_spr}
}

