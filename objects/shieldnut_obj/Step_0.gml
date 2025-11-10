direction=yy-y
if y>mouse_y y-=point_distance(x,y,x,mouse_y)/5;//0.5
if y<mouse_y y+=point_distance(x,y,x,mouse_y)/5;//0.5

y=clamp(y,135,555)

