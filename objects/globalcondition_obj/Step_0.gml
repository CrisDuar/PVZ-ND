if file_exists("survival.ini")
{sprite_index=mark2_spr}
else
{sprite_index=mark1_spr}

if variable_global_exists(cond){
    if variable_global_get(cond)==true{
        image_index=1
    }
    else
    {
        image_index=0
    }
}

if global.lang="en"{
text=entext
}

if global.lang="es"{
text=estext
}

