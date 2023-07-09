if (live_call()) return live_result;
a=instance_create_depth(random(room_width+10), 0, 0, obj_season_effect)
a.image_xscale=1
a.image_yscale=1
a.image_index=1
a.image_angle=a.direction
a.alarm[1]=-1
a.alarm[0]=1

if(!temp){
if(point_in_rectangle(device_mouse_x(0),device_mouse_y(0),x1-string_width_scribble(Lang_GetString("str_startmenu_begin"))/2,y1-string_height(Lang_GetString("str_startmenu_begin")),x1+string_width_scribble(Lang_GetString("str_startmenu_begin"))/2,y1+string_height(Lang_GetString("str_startmenu_begin")))){
	selected=1
	if(!audio){
		audio=true
		audio_play_sound(snd_menu_switch,0,0)
	}
}else if(point_in_rectangle(device_mouse_x(0),device_mouse_y(0),x1-string_width_scribble(Lang_GetString("str_startmenu_settings"))/2,y2-string_height(Lang_GetString("str_startmenu_settings")),x1+string_width_scribble(Lang_GetString("str_startmenu_settings"))/2,y2+string_height(Lang_GetString("str_startmenu_settings")))){
	selected=2
	if(!audio){
		audio=true
		audio_play_sound(snd_menu_switch,0,0)
	}
}else if(point_in_rectangle(device_mouse_x(0),device_mouse_y(0),x2-string_width_scribble(Lang_GetString("str_startmenu_achieve"))/2,y1-string_height(Lang_GetString("str_startmenu_achieve")),x2+string_width_scribble(Lang_GetString("str_startmenu_achieve"))/2,y1+string_height(Lang_GetString("str_startmenu_achieve")))){
	selected=3
	if(!audio){
		audio=true
		audio_play_sound(snd_menu_switch,0,0)
	}
}else if(point_in_rectangle(device_mouse_x(0),device_mouse_y(0),x2-string_width_scribble(Lang_GetString("str_startmenu_credits"))/2,y2-string_height(Lang_GetString("str_startmenu_credits")),x2+string_width_scribble(Lang_GetString("str_startmenu_credits"))/2,y2+string_height(Lang_GetString("str_startmenu_credits")))){
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