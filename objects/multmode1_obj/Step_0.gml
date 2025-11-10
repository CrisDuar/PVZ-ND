if global.vsgamemode=1{image_index=1}
else{image_index=0}

if selected=false{image_xscale=1 ; image_yscale=1}
else{image_xscale=1.1 ; image_yscale=1.1}


if global.lang="en"{
switch(global.vsgamemode){
case 0: text="Quick play" break
case 1: text="Custom play" break
case 2: text="Special delivery" break
}}

if global.lang="es"{
switch(global.vsgamemode){
case 0: text="Partida rápida" break
case 1: text="Partida personalizada" break
case 2: text="Entrega especial" break
}}

