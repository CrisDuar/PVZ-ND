obj = collision_line_first(choose(1056,980,888,800,720,630,540,440,350), y, 256, y,typeplant_obj, false, false)

if obj!=noone{
    with(instance_create(x-50,y-80,rugbyball_obj)){obj=other.obj}
}

