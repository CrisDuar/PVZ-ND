///Producción de sol

if global.nivelterminado=false and global.iniciogame=true{
    if daytime != 2 and room!=nivel40_rm and room!=nivel49_rm{
        if (multijugador){
            var n = 1
            if global.hordafinal n=2
        
            switch(global.vsmap){
                default://dia
                repeat(n){
                    instance_create_depth(random_range(320,730),64, -999,sol_obj)
                    instance_create_depth(random_range(800,1010),64, -999,zom_obj)
                }
                break
                
                case 1://tarde
                repeat(n){
                    with(instance_create_depth(random_range(320,730),64, -999,sol_obj)){costo=25 ; scale=0.8; image_xscale=0.8; image_yscale=0.8}
                    with(instance_create_depth(random_range(800,1010),64, -999,zom_obj)){costo=25 ; scale=0.8; image_xscale=0.8; image_yscale=0.8}
                }
                break
            }
        }else{
            if room!=izombie_rm{
                if (daytime != 1){
                    if spawnzomes=false{
                        instance_create_depth(random_range(320,1010),64, -999,sol_obj)
                    }else{
                        instance_create_depth(random_range(320,1010),64, -999,condisun_obj)
                    }
                }else{
                    if spawnzomes=false{
                        with(instance_create_depth(random_range(320,1010),64, -999,sol_obj)){costo=25; scale=0.8; image_xscale=0.8; image_yscale=0.8}
                    }else{
                        instance_create_depth(random_range(320,1010),64, -999,condisun_obj)
                    }
                }
            }else{
                if (daytime == 1){
                    with(instance_create_depth(random_range(320,1010),64, -999,zom_obj)){costo=25; scale=0.8; image_xscale=0.8; image_yscale=0.8}
                }else{
                    instance_create_depth(random_range(320,1010),64, -999,zom_obj)
                }
            }
        }
    }else{
        if multijugador=true or room==izombie_rm{
            with(instance_create_depth(random_range(800,1010),64, -999,zom_obj)){costo=25 ; scale=0.8; image_xscale=0.8; image_yscale=0.8}
        }
    }
}

alarm[0] = 60*sun_delay
