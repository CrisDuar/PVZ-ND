if desapareciendo=true{
image_alpha-=0.04
}

if image_yscale>=maxnumy
and image_yscale>=maxnumy{
restando=true
}

if image_yscale<maxnumy{image_yscale+=maxnumy/10}
if image_xscale<maxnumx{image_xscale+=maxnumx/10}


if restando=true
{
if image_yscale>=maxnumy-0.2{image_yscale-=maxnumy/10}
if image_xscale>=maxnumx-0.2{image_xscale-=maxnumx/10}

if num<0.2 and image_xscale>maxnumx-0.2 and image_yscale>maxnumx-0.2and image_xscale<=0 and image_yscale<=0 {
num+=0.01
}
}


if image_alpha<=0
{instance_destroy();}

