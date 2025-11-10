if global.vsgamemode!=2{
if global.vssudden=true{image_index=1}
else{image_index=0}}else{image_index=2 ; global.vssudden=false}

//if global.vsgamemode!=2{localsudden=global.vssudden}
if global.vsgamemode!=2 and localsudden=true{image_index=1 ; global.vssudden=true}

if selected=false{image_xscale=1 ; image_yscale=1}
else{image_xscale=1.1 ; image_yscale=1.1}


if global.lang="en"{
if global.vsgamemode!=2{
switch(global.vssudden){
case false: text="Off" break
case true: text="On" break
}}else{text="disabled"}}

if global.lang="es"{
if global.vsgamemode!=2{
switch(global.vssudden){
case false: text="Desactivado" break
case true: text="Activado" break
}}else{text="deshabilitado"}}

