if fase=0{
timer--
if timer<=0 fase=1
}

if size>=1.18{
size-=0.25
}

if fase=0
{
transparencia+=0.05
}
else
{transparencia-=0.05}

if transparencia<=0{
if final==true instance_create(x,y,finalwave_obj)
instance_destroy()
}

if global.lang="en"{l=0}
if global.lang="es"{l=1}

