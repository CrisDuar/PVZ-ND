if !instance_exists(obj) instance_destroy()
depth=-y-100

if image_alpha>0
{image_alpha-=0.25}

if image_alpha<=0{
    image_alpha=1
    if instance_exists(obj){
        x=obj.x
        y=obj.y
    }
}

