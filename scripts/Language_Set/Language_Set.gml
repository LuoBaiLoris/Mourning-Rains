///@arg lang
function Language_Set(){
	global.language=argument[0]
	Encounter_Custom()
	Lang_LoadFont(argument[0])
	Lang_LoadString(argument[0])
	Lang_LoadSprite(argument[0])
	room_restart()
	Flag_Set(FLAG_TYPE.SETTINGS,FLAG_SETTINGS.LANGUAGE,argument[0])
	//Flag_Save(FLAG_TYPE.SETTINGS)
}