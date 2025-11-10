if global.lang="es"{image_index=1}
else{image_index=0}

if os_is_network_connected(){
    if gj_user_isloggedin(){
        if http_data[0,1] == "0"{
            if cont[0]==0{
                alarm[0]=room_speed
                http_data[0,0] = gj_datastore_get_user("savedata")
                cont[0]=1
            }
        }
        
        if http_data[1,1] == "0"{
            if cont[1]==0{
                alarm[0]=room_speed
                http_data[1,0] = gj_datastore_get_user("player_surv")
                cont[1]=1
            }
        }
        
        if http_data[2,1] == "0"{
            if cont[2]==0{
                alarm[0]=room_speed
                http_data[2,0] = gj_datastore_get_user("pool_surv")
                cont[2]=1
            }
        }
        
        if http_data[3,1] == "0"{
            if cont[3]==0{
                alarm[0]=room_speed
                http_data[3,0] = gj_datastore_get_user("weather_surv")
                cont[3]=1
            }
        }
    }
}

