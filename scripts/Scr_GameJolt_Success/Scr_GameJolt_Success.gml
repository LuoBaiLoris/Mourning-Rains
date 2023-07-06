
function Scr_GameJolt_Success(struct_response)
{
	if(type == "GameJolt_User_LogIn")
	{
		global.GameJolt_Auth_Confirmed = true
		global.GameJolt_GameToken = game_token
		global.GameJolt_Username = user_name
		
		var map = ds_map_create()
		map[?"username"] = global.GameJolt_Username
		map[?"gametoken"] = global.GameJolt_GameToken
		ds_map_secure_save(map,GameJolt_File_LogIn)
		ds_map_destroy(map)
	}
		
	if(is_undefined(callback_success))
		exit
	
	switch(type)
	{
		default:
			callback_success()
		break
		
		//case "GameJolt_User_LogIn":
		
		case "GameJolt_User_FetchMe":
		case "GameJolt_User_FetchWithUserID":
		case "GameJolt_User_FetchWithUserName":
		
			//id,type,username,avatar_url,signed_up,signed_up_timestamp,last_logged_in,last_logged_in_timestamp,status,developer_name,developer_website,developer_description
			
			//var ret_struct = {}
			
			//ret_struct.ID = struct_response.users[0].id
			//ret_struct.type = struct_response.users[0].type
			//ret_struct.username = struct_response.users[0].username
			//ret_struct.avatar_url = struct_response.users[0].avatar_url
			//ret_struct.signed_up = struct_response.users[0].signed_up
			//ret_struct.signed_up_timestamp = struct_response.users[0].signed_up_timestamp
			//ret_struct.last_logged_in = struct_response.users[0].last_logged_in
			//ret_struct.last_logged_in_timestamp = struct_response.users[0].last_logged_in_timestamp
			//ret_struct.status = struct_response.users[0].status
			//ret_struct.developer_name = struct_response.users[0].developer_name
			//ret_struct.developer_website = struct_response.users[0].developer_website
			//ret_struct.developer_description = struct_response.users[0].developer_description
			
			callback_success(struct_response.users[0]);
			
		break
		
		//case "GameJolt_Session_Open":
		//case "GameJolt_Session_Ping_Active":
		//case "GameJolt_Session_Ping_IDLE":
		//case "GameJolt_Session_Check":
		//case "GameJolt_Session_Close":
		
		
		//case "GameJolt_Scores_Add":
		//case "GameJolt_Scores_Add_Guest":
		case "GameJolt_Scores_Fetch_Me":
		case "GameJolt_Scores_Fetch_Guest":
			
			var array_score = struct_response.scores
			if(!is_undefined(array_score))
			if(array_length(array_score))
			{
				//var struct = array_score[0];
				
				//ret_struct = {}
				//ret_struct.score = struct.score
				//ret_struct.sort = struct.sort
				//ret_struct.extra_data = struct.extra_data
				//ret_struct.user = struct.user
				//ret_struct.user_id = struct.user_id
				//ret_struct.guest = struct.guest
				//ret_struct.stored = struct.stored
				//ret_struct.stored_timestamp = struct.stored_timestamp
				
				callback_success(array_score[0])
				return
			}
			callback_success(undefined)
			
		break
		
		case "GameJolt_Scores_Fetch":
		case "GameJolt_Scores_Fetch_BetterThan":
		case "GameJolt_Scores_Fetch_WorseThan":
			//score,sort,extra_data,user,user_id,guest,stored,stored_timestamp
			
			callback_success(struct_response.scores)
			
		break
		
		case "GameJolt_Scores_Tables":
			
			//list of: {id,name,description,primary}
			callback_success(struct_response.tables)
			
		break
		
		case "GameJolt_Scores_Rank":
			callback_success(struct_response.rank)
		break
		
		case "GameJolt_Trophies_Fetch":
			
			if(!is_undefined(struct_response.trophies))
			{
				var array = struct_response.trophies
				if(!array_length(array))
				{
					callback_success(undefined)	
					exit
				}
				
				var struct = array[0]
				
				//var ret_struct = {}
				
				//ret_struct.ID = struct.id
				//ret_struct.title = struct.title
				//ret_struct.description = struct.description
				//ret_struct.difficulty = struct.difficulty
				//ret_struct.image_url = struct.image_url
				//ret_struct.achieved = struct.achieved
				
				callback_success(array[0])
			}
			
		break
		
		case "GameJolt_Trophies_Fetch_All":
		

			if(!is_undefined(struct_response.trophies))
				callback_success(struct_response.trophies)
		break
			
		//case "GameJolt_Trophies_Update":
		//case "GameJolt_Trophies_Remove":
		
		case "GameJolt_DataStorage_Fetch":
		case "GameJolt_DataStorage_Fetch_Global":
			callback_success(struct_response.data)
			//data
		break
		
		//case "GameJolt_DataStorage_Set":
		//case "GameJolt_DataStorage_Set_Global":
		//case "GameJolt_DataStorage_Remove":
		//case "GameJolt_DataStorage_Remove_Global":
		//case "GameJolt_DataStorage_Update":
		//case "GameJolt_DataStorage_Update_Global":
		
		case "GameJolt_DataStorage_GetKeys":
		case "GameJolt_DataStorage_GetKeys_Global":
		
			var array_return = []
			
			if(!is_undefined(struct_response.keys))
			{
				var array = struct_response.keys;
				for(var a = array_length(array) - 1; a >= 0; a--)
				{
					array_return[a] = array[a].key;
				}
			}
			callback_success(array)
			
		break
		
		case "GameJolt_Friends":
			var array_return = []
			
			if(!is_undefined(struct_response.friends))
			{
				var array = struct_response.friends;
				for(var a = array_length(array) - 1; a >= 0; a--)
				{
					array_return[a] = array[a].friend_id;
				}
			}
			callback_success(array_return)
		break
		
		case "GameJolt_Time":
			//timestamp,timezone,year,month,day,hour,minute,second
			
			//var ret_struct = {}
			//ret_struct.timestamp = struct_response.timestamp
			//ret_struct.timezone = struct_response.timezone
			//ret_struct.year = struct_response.year
			//ret_struct.month = struct_response.month
			//ret_struct.day = struct_response.day
			//ret_struct.hour = struct_response.hour
			//ret_struct.minute = struct_response.minute
			//ret_struct.second = struct_response.second
			
			callback_success(struct_response)
			
		break
	}
}
