y=floor(y)
x=floor(x)
if image_alpha<1 image_alpha+=0.05

if place_meeting(x-75,y,charco_obj)/*izq*/ and place_meeting(x+75,y,charco_obj){//der
    state=3
}else{
    if place_meeting(x-75,y,charco_obj){//izq
        state=1
    }else if place_meeting(x+75,y,charco_obj){//der
        state=2
    }else{
        state=0
    }
}

/* */
/*  */
