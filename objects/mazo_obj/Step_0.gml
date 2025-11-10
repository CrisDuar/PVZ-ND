x=mouse_x
y=mouse_y

if image_angle>-60{
image_angle-=5
}

if control_obj.seleccionado!=0{
control_obj.mazo=false
image_alpha=0
}else{
image_alpha=1
control_obj.mazo=true
}

