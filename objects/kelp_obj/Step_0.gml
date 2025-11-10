if instance_exists(obj){
	with(obj){hspeed=0}
	x=obj.x
	depth=obj.depth-10
}


if image_yscale<=0.3 and desapareciendo=true{
    if instance_exists(obj){
        with(obj){
            zombiedrop(money);
            audio_play_sound(aguazom_snd,0.5,false)
            with(instance_create(x,y+5,tierra1_obj)){sprite_index=agua1_spr}
            with(instance_create(x,y+5,tierra3_obj)){sprite_index=agua3_spr; image_alpha=1}
            instance_create(x,y+5,aguaex_obj)
            instance_destroy();
        }
    }

    instance_destroy();
}

if (image_yscale<1.3 and desapareciendo==false){
    image_yscale+=0.1
    image_alpha+=0.1
}
else{
	desapareciendo=true;
	if snd==false{audio_play_sound(sweep_snd,0.5,false); snd=true}
}

if desapareciendo=true{
	image_yscale-=num
	image_alpha-=num/2.6

	if num<0.1{
		num+=0.01
	}
}
