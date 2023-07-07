if(temp!=1){
instance_destroy(english)
instance_destroy(schinese)

english=instance_create_depth(160,220,0,text_typer)
schinese=instance_create_depth(370,220,0,text_typer)

if(Input_IsPressed(INPUT.LEFT)){
	if(choice=1){
	audio_play_sound(snd_menu_switch,0,0)}
	choice=0
	global.language=choice
	Flag_Set(FLAG_TYPE.SETTINGS,FLAG_SETTINGS.LANGUAGE,choice)
}
if(Input_IsPressed(INPUT.RIGHT)){
	if(choice=0){
	audio_play_sound(snd_menu_switch,0,0)}
	choice=1
	global.language=choice
	Flag_Set(FLAG_TYPE.SETTINGS,FLAG_SETTINGS.LANGUAGE,choice)
}
if(choice=0){
english.text=prefix+"{color `yellow`}English"
schinese.text=prefix+"简体中文"}
if(choice=1){
english.text=prefix+"English"
schinese.text=prefix+"{color `yellow`}简体中文"}}

if(Input_IsPressed(INPUT.CONFIRM)&&temp!=1){
	instance_destroy(title)
	instance_destroy(english)
	instance_destroy(schinese)
	temp=1
	audio_play_sound(snd_menu_confirm,0,0)
	alarm[0]=60
}