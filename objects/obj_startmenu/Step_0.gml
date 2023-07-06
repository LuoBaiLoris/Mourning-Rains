if(!temp){
if(point_in_rectangle(device_mouse_x(0),device_mouse_y(0),room_width/5-string_width(Lang_GetString("str_startmenu_begin")),room_height/20*11-string_height(Lang_GetString("str_startmenu_begin")),room_width/5+string_width(Lang_GetString("str_startmenu_begin")),room_height/20*11+string_height(Lang_GetString("str_startmenu_begin")))){
	selected=1
	if(!audio){
		audio=true
		audio_play_sound(snd_menu_switch,0,0)
	}
}else if(point_in_rectangle(device_mouse_x(0),device_mouse_y(0),room_width/5-string_width(Lang_GetString("str_startmenu_settings")),room_height/4*3-string_height(Lang_GetString("str_startmenu_settings")),room_width/5+string_width(Lang_GetString("str_startmenu_settings")),room_height/4*3+string_height(Lang_GetString("str_startmenu_settings")))){
	selected=2
	if(!audio){
		audio=true
		audio_play_sound(snd_menu_switch,0,0)
	}
}else if(point_in_rectangle(device_mouse_x(0),device_mouse_y(0),room_width/5*4-string_width(Lang_GetString("str_startmenu_achieve")),room_height/20*11-string_height(Lang_GetString("str_startmenu_achieve")),room_width/5*4+string_width(Lang_GetString("str_startmenu_achieve")),room_height/20*11+string_height(Lang_GetString("str_startmenu_achieve")))){
	selected=3
	if(!audio){
		audio=true
		audio_play_sound(snd_menu_switch,0,0)
	}
}else if(point_in_rectangle(device_mouse_x(0),device_mouse_y(0),room_width/5*4-string_width(Lang_GetString("str_startmenu_credits")),room_height/4*3-string_height(Lang_GetString("str_startmenu_credits")),room_width/5*4+string_width(Lang_GetString("str_startmenu_credits")),room_height/4*3+string_height(Lang_GetString("str_startmenu_credits")))){
	selected=4
	if(!audio){
		audio=true
		audio_play_sound(snd_menu_switch,0,0)
	}
}else{
	selected=0
	audio=false
}}

if(selected!=0&&mouse_check_button_pressed(mb_left)&&!temp){
	audio_play_sound(snd_menu_confirm,0,0)
	temp=true
	Fader_Fade(0,1,30)
	alarm[0]=32
}