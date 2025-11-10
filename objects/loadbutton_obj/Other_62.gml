if os_is_network_connected(){
    if apicontrol_obj.data_import!=0{
        var rslt = gj_result_id();
            
        if rslt == http_data[0,0]{
            if gj_result_status(){
                http_data[0,1] = gj_result_data_field("data")
            }
        }else if rslt == http_data[1,0]{
            if gj_result_status(){
                http_data[1,1] = gj_result_data_field("data")
            }
        }else if rslt == http_data[2,0]{
            if gj_result_status(){
                http_data[2,1] = gj_result_data_field("data")
            }
        }else if rslt == http_data[3,0]{
            if gj_result_status(){
                http_data[3,1] = gj_result_data_field("data")
            }
        }
    }
    gj_result_clear();
}

