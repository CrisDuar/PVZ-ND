if (particle != -1 and global.videoq > 0){
    repeat(2){
        with(instance_create(x,y+yy,peaparticle_obj)){sprite_index=other.particle}
        with(instance_create(x,y+yy,peaparticle_obj)){sprite_index=other.particle}
    }
}
if broke!=-1{
    with(instance_create(x,y+yy,globalbroke_obj)){sprite_index=other.broke}
}
audio_play_sound(choose(snd1,snd2),1,false)
instance_destroy();

