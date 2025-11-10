if controlmenu_obj.showf3==true{
image_index=1
}
else
{
image_index=0
}

if global.lang="en"{text=entext}
if global.lang="es"{text=estext}


if constant == 1{
    estext = "Tiempo jugado: " + game_time_format()
    entext = "Play time: " + game_time_format()
}


