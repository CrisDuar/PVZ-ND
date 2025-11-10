if image_index>1{mask_index=nocol_spr}
if image_index>=11{instance_destroy()}

if image_index<7{
    var _npart = 5
    if global.videoq==0 _npart = 1
    
    part_particles_create(part, x-random_range(-30,30), y+10, p1, _npart);
}

