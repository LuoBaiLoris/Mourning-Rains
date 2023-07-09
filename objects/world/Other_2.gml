global.language=LANGUAGE.ENGLISH
global.debug=false
global.undead=false
global.gj_error=false

Anim_Init();
animInit()
BezierAnim_Init();

Console_Init();
Console_SetStatusNumber(3);
Console_SetStatusRatio(0,2/11);
Console_SetStatusRatio(1,8/11);
Console_SetStatusRatio(2,11/11);

Input_Init();
Input_Bind(INPUT.CONFIRM,INPUT_TYPE.KEYBOARD,0,vk_enter);
Input_Bind(INPUT.CONFIRM,INPUT_TYPE.KEYBOARD,0,ord("Z"));
Input_Bind(INPUT.CANCEL,INPUT_TYPE.KEYBOARD,0,vk_shift);
Input_Bind(INPUT.CANCEL,INPUT_TYPE.KEYBOARD,0,ord("X"));
Input_Bind(INPUT.MENU,INPUT_TYPE.KEYBOARD,0,vk_control);
Input_Bind(INPUT.MENU,INPUT_TYPE.KEYBOARD,0,ord("C"));
Input_Bind(INPUT.UP,INPUT_TYPE.KEYBOARD,0,vk_up);
Input_Bind(INPUT.DOWN,INPUT_TYPE.KEYBOARD,0,vk_down);
Input_Bind(INPUT.LEFT,INPUT_TYPE.KEYBOARD,0,vk_left);
Input_Bind(INPUT.RIGHT,INPUT_TYPE.KEYBOARD,0,vk_right);

Lang_Init();
Lang_LoadList();
Lang_LoadString(0);
Lang_LoadSprite(0);
Lang_LoadFont(0);

Flag_Init();

Encounter_Init();

BGM_Init();

Dialog_Init();

Demo_Init();

instance_create_depth(0,0,0,camera);
instance_create_depth(0,0,0,fader);
instance_create_depth(0,0,0,border);
instance_create_depth(0,0,0,closed_captions);
instance_create_depth(0,0,0,obj_debug)

application_surface_draw_enable(false);

//Border_SetEnabled(true);

Console_OutputLine("UNDERTALE by Toby Fox");
Console_OutputLine("UNDERTALE Engine by TML");
Console_OutputLine("Engine Version: "+ENGINE_VERSION);
Console_OutputLine("Game Name: "+GAME_NAME);
Console_OutputLine("Game Author: "+GAME_AUTHOR);
Console_OutputLine("Game Version: "+GAME_VERSION);

//show_debug_overlay(true);

if(os_is_network_connected()=true){
GameJolt_User_LogIn_FromCache()
np_initdiscord(Discord_Key,true,0)
np_update()
}
randomize();
Flag_Load(FLAG_TYPE.SETTINGS)
/*var default_lang=0
if(os_get_language()="zh"){default_lang=1}
Language_Set(Flag_Get(FLAG_TYPE.SETTINGS,FLAG_SETTINGS.LANGUAGE,default_lang))*/
//边框
border_=Flag_Get(FLAG_TYPE.SETTINGS,FLAG_SETTINGS.BORDER,0)
if(border_=0){
Border_SetEnabled(false)}else{
Border_SetEnabled(true)
Border_SetSprite(spr_border_simple)}
//全屏
if(!(os_type=os_android||os_type=os_ios||os_type=os_winphone)){
if(Flag_Get(FLAG_TYPE.SETTINGS,FLAG_SETTINGS.FULLSCREEN,1)=2){
window_set_fullscreen(true)}}
//音量
volume=Flag_Get(FLAG_TYPE.SETTINGS,FLAG_SETTINGS.VOLUME,1)
//窗口大小
if(!(os_type=os_android||os_type=os_ios||os_type=os_winphone)){
_window_size=Flag_Get(FLAG_TYPE.SETTINGS,FLAG_SETTINGS.WINDOW_SIZE,1)
if(!Border_IsEnabled()&&window_get_fullscreen()=false){
Window_Size_Set(_window_size)}}

if(LOCK_LANGUAGE!=-1){Language_Set(LOCK_LANGUAGE)}
room_goto(room_lang)