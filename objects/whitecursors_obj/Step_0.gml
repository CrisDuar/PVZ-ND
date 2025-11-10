if global.cursorcolor=0{
switch(global.cursor){
    case 1:
        image_index=0
    break
    
    case 2:
        image_index=1
    break
        
    case 3:
        image_index=2
    break
        
    case 4:
        image_index=3
    break
        
    case 5:
        image_index=4
    break
        
    case 6:
        image_index=5
    break
        
    case 7:
        image_index=6
    break
}}
else{
switch(global.cursor){
    case 1:
        image_index=7
    break
    
    case 2:
        image_index=8
    break
        
    case 3:
        image_index=9
    break
        
    case 4:
        image_index=10
    break
        
    case 5:
        image_index=11
    break
        
    case 6:
        image_index=12
    break
        
    case 7:
        image_index=13
    break
}}

if global.cursor !=0{
sprite_index=cursorwhite_spr
}else{
sprite_index=cursornan_spr
}

