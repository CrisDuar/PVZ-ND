if room==configsurv_rm
and file_exists("survival.ini")
and global.version<1.1
{visible=true}else{visible=false}

if global.lang="en"{
text="If your save is older than version 1.3, it's recommended to start a new one."
}

if global.lang="es"{
text="Si tu partida es anterior a la versión 1.3, es recomendable empezar una nueva."
}


