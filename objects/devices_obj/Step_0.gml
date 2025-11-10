/*
TECLADO = 0
MOUSE = 1
TOUCH = 2
MANDO = 3
*/

if variable_global_get(gname)==-1{//MANDO DESCONECTADO
    if global.vs_mtouch[type]{//TOUCH
        if os_type == os_android{
            state = 2
        }else{
            state = 1
        }
    }else{//TECLADO
        state = 0
    }
}else{
    state = 3
}

image_index = state

/* */
/*  */
