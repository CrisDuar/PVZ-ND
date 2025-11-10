/*
TECLADO = 0
MOUSE = 1
TOUCH = 2
MANDO = 3
*/

switch(state){
    case 0:
        global.vs_mtouch[type] = true
        audio_play_sound(aceptoption_snd,1,false)
    break
    
    case 1:
    case 2:
        global.vs_mtouch[type] = false
        audio_play_sound(aceptoption_snd,1,false)
    break
}

/* */
/*  */
