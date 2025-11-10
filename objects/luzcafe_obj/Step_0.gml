depth=-y-60
expon += 0.05
expon2 -= 0.05
scale=expon

image_xscale=scale
image_yscale=scale
image_alpha=expon2

if image_alpha<=0{instance_destroy()}

