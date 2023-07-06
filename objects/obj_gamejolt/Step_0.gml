instance_create_depth(random(room_width),0,0,obj_season_effect)

if(keyboard_check(vk_control)&&keyboard_check_pressed(ord("V"))){keyboard_string=clipboard_get_text()}

if(statu=0){
if(string_length(keyboard_string)>30){
keyboard_string=string_copy(keyboard_string,1,30)}
if(keyboard_check_pressed(vk_enter)){
audio_play_sound(snd_menu_confirm,0,0)
username=keyboard_string
keyboard_string=""
statu=1}
}else if(statu=1){
if(string_length(keyboard_string)>6){
keyboard_string=string_copy(keyboard_string,1,6)}
if(keyboard_check_pressed(vk_enter)){
audio_play_sound(snd_menu_confirm,0,0)
gametoken=keyboard_string
keyboard_string=""
if(GameJolt_User_IsLogged()){
GameJolt_User_LogOut()}
GameJolt_User_LogIn(username,gametoken,function(){global.gj_error=0},function(){global.gj_error=1})
statu=3}
}else if(statu=3&&(GameJolt_User_IsLogged()||global.gj_error=1)){
statu=4
}else if(statu=4&&keyboard_check_pressed(vk_enter)){
room_goto(room_settings)}
if(keyboard_check_pressed(vk_alt)){
room_goto(room_settings)}

if(GameJolt_User_IsLogged()&&temp=0){temp=1}