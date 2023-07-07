if (live_call()) return live_result;
if room == room_grillbys
{
	if step == 0
	{
		instance_create_depth(212, 92, -100000, obj_sprite)
		char_sans.image_alpha = 0	
		Dialog_Add(Lang_GetString("str_scene1_1"))
		Dialog_Add(Lang_GetString("str_scene1_2"))
		Dialog_Add(Lang_GetString("str_scene1_3"))
		Dialog_Add(Lang_GetString("str_scene1_4"))
		Dialog_Add(Lang_GetString("str_scene1_5"))
		Dialog_Add(Lang_GetString("str_scene1_6"))
		Dialog_Add(Lang_GetString("str_scene1_7"))
		Dialog_Add(Lang_GetString("str_scene1_8"))
		Dialog_Add(Lang_GetString("str_scene1_9"))
		Dialog_Add(Lang_GetString("str_scene1_10"))
		Dialog_Add(Lang_GetString("str_scene1_11"))
		Dialog_Add(Lang_GetString("str_scene1_12"))
		Dialog_Add(Lang_GetString("str_scene1_13"))
		Dialog_Add(Lang_GetString("str_scene1_14"))
		Dialog_Add(Lang_GetString("str_scene1_15"))
		Dialog_Add(Lang_GetString("str_scene1_16"))
		Dialog_Add(Lang_GetString("str_scene1_17"))
		Dialog_Add(Lang_GetString("str_scene1_18"))
		Dialog_Add(Lang_GetString("str_scene1_19"))
		Dialog_Add(Lang_GetString("str_scene1_20"))
		Dialog_Start();
	}
	if step == 1
	{
		instance_destroy(obj_sprite)
		char_sans.image_alpha = 1	
		char_sans.move[DIR.DOWN] = 65
		char_sans.move[DIR.LEFT] = 15
	}
}