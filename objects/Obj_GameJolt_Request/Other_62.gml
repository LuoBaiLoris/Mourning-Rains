
show_debug_message("ASYNC: " + json_encode(async_load))

if(async_load[?"status"] != 1)// 1==downloading, 0==success ,<0==Error
if(async_load[?"id"] == request)
if(!async_load[?"status"] == 1)
{
	if(async_load[?"status"] == 0)
	{
		if(async_load[?"http_status"] == 200)
		{
			var struct = json_parse(async_load[?"result"])
			var struct_response = struct.response
		
			if(struct_response.success == "true")
				Scr_GameJolt_Success(struct_response)
			else
			if(!is_undefined(callback_failed))
				callback_failed(struct_response[$ "message"], async_load)
			
			//var map = json_decode(async_load[?"result"])
			//var map_response = map[?"response"]
			//var ok = map_response[?"success"]
		
			//if(ok)
			//	Scr_GameJolt_Success(map_response)
			//else
			//if(!is_undefined(callback_failed))
			//	callback_failed(map_response[?"message"],async_load)
			
			//ds_map_destroy(map)
		}
	
	
	}
	else
	if(async_load[?"status"] < 0)
	if(!is_undefined(callback_failed))
		callback_failed("Request Failed. Maybe No Internet",async_load)
	
	instance_destroy()
}