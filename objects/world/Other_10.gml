/// @description Discord Rich Presence
/*var time=Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.TIME)
var minute=time div 60;
var second=time mod 60;
var time_text=(minute<10 ? "0" : "")+string(minute)+":"+(second<10 ? "0" : "")+string(second)*/

/*if(instance_exists(char_player)){
np_setpresence(Lang_GetString("str_discord_ow")+Player_GetRoomName(room_get_name(room))+")",time_text,"icon","None")}*/
if(room=room_battle){
np_setpresence(Lang_GetString("str_discord_battle"),"","icon","None")}
if(room=room_shop){
np_setpresence(Lang_GetString("str_discord_shop"),"","icon","None")}
if(room=room_gameover){
np_setpresence(Lang_GetString("str_discord_gameover"),Lang_GetString("str_discord_gameover_details"),"icon","None")}
if(room=room_startmenu){
np_setpresence(Lang_GetString("str_discord_menu"),Lang_GetString("str_discord_menu_menu"),"icon","None")}
if(room=room_settings){
np_setpresence(Lang_GetString("str_discord_menu"),Lang_GetString("str_discord_menu_settings"),"icon","None")}
if(room=room_gamejolt){
np_setpresence(Lang_GetString("str_discord_menu"),Lang_GetString("str_discord_menu_gj"),"icon","None")}
if(room=room_credits){
np_setpresence(Lang_GetString("str_discord_menu"),Lang_GetString("str_discord_menu_credits"),"icon","None")}
if(room=room_read){
np_setpresence(Lang_GetString("str_discord_menu"),Lang_GetString("str_discord_menu_read"),"icon","None")}
if(room=room_logo){
np_setpresence(Lang_GetString("str_discord_title"),Lang_GetString("str_discord_title_details"),"icon","None")}
if(room=room_lang){
np_setpresence(Lang_GetString("str_discord_lang"),Lang_GetString("str_discord_lang_details"),"No Machine Translate allowed","icon","None")}